import 'package:simple_app/data/models/todo.dart';
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

class TodoProvider {
  /// Open the database.
  Future<Database> _openDatabase({bool readOnly = false}) async {
    final path = await initDb('todo.db');
    if (readOnly) {
      return openReadOnlyDatabase(path);
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
  Future<void> insert(Todo todo) async {
    final db = await _openDatabase();
    await db.insert(
      tableTodo,
      todo.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  /// Get a todo.
  Future<Todo?> getTodo(int id) async {
    final db = await _openDatabase(readOnly: true);
    final List<Map> maps = await db.query(tableTodo,
        columns: [columnId, columnDone, columnTitle],
        where: '$columnId = ?',
        whereArgs: [id]);
    if (maps.isNotEmpty) {
      return Todo.fromMap(maps.first);
    }
    return null;
  }

  Future<List<Todo>> getTodoList() async {
    final db = await _openDatabase();
    final List<Map<String, dynamic>> maps = await db.query(tableTodo);
    return List.generate(maps.length, (i) {
      return Todo.fromMap(maps[i]);
    });
  }

  /// Delete a todo.
  Future<int> delete(int id) async {
    final db = await _openDatabase();
    return await db.delete(tableTodo, where: '$columnId = ?', whereArgs: [id]);
  }

  /// Update a todo.
  Future<int> update(Todo todo) async {
    final db = await _openDatabase();
    return await db.update(tableTodo, todo.toMap(),
        where: '$columnId = ?', whereArgs: [todo.id]);
  }

  /// Close database.
  Future close() async {
    final db = await _openDatabase();
    db.close();
  }
}
