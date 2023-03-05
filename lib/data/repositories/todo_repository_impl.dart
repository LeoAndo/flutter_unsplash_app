import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_app/data/database/entities/todo_entity.dart';
import 'package:simple_app/data/database/todo_database_open_helper.dart';
import 'package:simple_app/data/models/result.dart';
import 'package:simple_app/domain/models/todo.dart';
import 'package:simple_app/domain/repositories/todo_repository.dart';

final todoRepositoryProvider = Provider((ref) => TodoRepositoryImpl(ref.read));

class TodoRepositoryImpl implements TodoRepository {
  TodoRepositoryImpl(this._reader);

  final Reader _reader;

  late final TodoDatabaseOpenHelper todoDatabaseOpenHelper =
      _reader(todoDatabaseOpenHelperProvider);

  @override
  Future<void> addTodoItem(Todo todo) async {
    Result.guardFuture(
        () => todoDatabaseOpenHelper.addTodoItem(todo.toEntity()));
  }

  @override
  Future<void> deleteTodoItems() async {
    Result.guardFuture(() => todoDatabaseOpenHelper.deleteTodoItems());
  }

  @override
  Future<Result<List<Todo>>> findTodoItems() async {
    return Result.guardFuture(() => todoDatabaseOpenHelper
        .findTodoList()
        .then((value) => value.toModels()));
  }

  @override
  Future<void> updateTodoItem(Todo todo) async {
    Result.guardFuture(
        () => todoDatabaseOpenHelper.updateTodoItem(todo.toEntity()));
  }

  @override
  Future<Result<Todo>> findTodoItemById(int id) async {
    return Result.guardFuture(() =>
        todoDatabaseOpenHelper.getTodo(id).then((value) => value.toModel()));
  }
}
