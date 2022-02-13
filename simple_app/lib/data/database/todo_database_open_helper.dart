import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_app/data/database/entities/todo_entity.dart';
import 'package:sqflite/sqflite.dart';
import 'sqflite_util.dart';

/// `todo` table name
const String tableTodo = 'todo';

/// id column name
const String columnId = '_id';

/// title column name
const String columnTitle = 'title';

/// done column name
const String columnDone = 'done';

final todoDatabaseOpenHelperProvider =
    Provider((ref) => TodoDatabaseOpenHelper());

class TodoDatabaseOpenHelper {
  /// Open the database.
  Future<Database> _getDatabase({bool readOnly = false}) async {
    final path = await initDatabase('todo.db');
    if (readOnly) {
      return await openReadOnlyDatabase(path);
    } else {
      return await openDatabase(path, version: 1,
          onCreate: (Database db, int version) async {
        await db.execute('''
                            create table $tableTodo ( 
                              $columnId integer primary key autoincrement, 
                              $columnTitle text not null,
                              $columnDone integer not null)
                            ''');
      });
    }
  }

  /// Insert a todo.
  Future<void> addTodoItem(TodoEntity todo) async {
    final db = await _getDatabase();
    await db.insert(
      tableTodo,
      todo.toMap(),
    );
  }

  /// Get a todo.
  Future<TodoEntity> getTodo(int id) async {
    final db = await _getDatabase(readOnly: true);
    final List<Map> maps = await db.query(tableTodo,
        columns: [columnId, columnDone, columnTitle],
        where: '$columnId = ?',
        whereArgs: [id]);
    if (maps.isNotEmpty) {
      return TodoEntity.fromMap(maps.first);
    }
    return throw Exception("todo Item not found.");
  }

  Future<List<TodoEntity>> findTodoList() async {
    final db = await _getDatabase(readOnly: false);
    final List<Map<String, dynamic>> maps = await db.query(tableTodo);
    return List.generate(maps.length, (i) {
      return TodoEntity.fromMap(maps[i]);
    });
  }

  /// Delete a todo.
  Future<int> delete(int id) async {
    final db = await _getDatabase();
    return await db.delete(tableTodo, where: '$columnId = ?', whereArgs: [id]);
  }

  Future<void> deleteTodoItems() async {
    final db = await _getDatabase();
    db.execute("DELETE FROM $tableTodo");
  }

  /// Update a todo.
  Future<int> updateTodoItem(TodoEntity todo) async {
    final db = await _getDatabase();
    return await db.update(tableTodo, todo.toMap(),
        where: '$columnId = ?', whereArgs: [todo.id]);
  }

  /// Close database.
  Future close() async {
    final db = await _getDatabase();
    db.close();
  }
}
