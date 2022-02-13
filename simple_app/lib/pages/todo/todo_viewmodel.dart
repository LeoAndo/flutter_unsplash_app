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

  Future<void> addTodoData({required String title, required bool done}) async =>
      await _repository
          .addTodoItem(Todo(title: title, done: done))
          .whenComplete(() => fetchTodoList());

  Future<void> updateTodoData({required int id}) async =>
      await _usecase.execute(id).whenComplete(() => fetchTodoList());

  Future<void> deleteTodoItems() async =>
      await _repository.deleteTodoItems().whenComplete(() => fetchTodoList());

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
