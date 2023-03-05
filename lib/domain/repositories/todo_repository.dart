import 'package:simple_app/data/models/result.dart';
import 'package:simple_app/domain/models/todo.dart';

abstract class TodoRepository {
  Future<void> addTodoItem(Todo todo);
  Future<void> updateTodoItem(Todo todo);
  Future<void> deleteTodoItems();
  Future<Result<List<Todo>>> findTodoItems();
  Future<Result<Todo>> findTodoItemById(int id);
}
