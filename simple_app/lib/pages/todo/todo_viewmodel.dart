import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_app/data/app_error.dart';
import 'package:simple_app/data/repositories/todo_repository_impl.dart';
import 'package:simple_app/domain/models/todo.dart';
import 'package:simple_app/domain/repositories/todo_repository.dart';
import 'package:simple_app/domain/usecases/todo_done_usecase.dart';

import 'todo_ui_state.dart';

final todoViewModelProvider =
    ChangeNotifierProvider((ref) => TodoViewModel(ref.read));

final textControllerStateProvider = StateProvider.autoDispose((ref) {
  return TextEditingController(text: '');
});

class TodoViewModel extends ChangeNotifier {
  TodoViewModel(this._reader);

  final Reader _reader;

  late final TodoRepository _repository = _reader(todoRepositoryProvider);
  late final TodoDoneUseCase _usecase = _reader(todoDoneUseCaseProvider);

  TodoUiState _uiState = const TodoUiState.initial();
  TodoUiState get uiState => _uiState;

  Future<void> addTodoData(Todo todo) async {
    await _repository.addTodoItem(todo);
    await fetchTodoList();
  }

  Future<void> updateTodoData(Todo todo) async {
    await _usecase.execute(todo);
    await fetchTodoList();
  }

  Future<void> deleteTodoItems() async {
    await _repository.deleteTodoItems();
    await fetchTodoList();
  }

  Future<void> fetchTodoList() async {
    var ret = await _repository.findTodoItems();
    ret.when(
        success: (data) => {_handleSuccess(data)},
        failure: (error) => {_handleFailure(error)});
  }

  _handleSuccess(List<Todo> data) {
    _uiState = TodoUiState(data);
    notifyListeners();
  }

  _handleFailure(AppError error) {
    _uiState = TodoUiState.error(error.message);
    notifyListeners();
  }
}
