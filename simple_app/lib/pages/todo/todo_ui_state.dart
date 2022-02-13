import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_app/domain/models/todo.dart';

part 'todo_ui_state.freezed.dart';
part 'todo_ui_state.g.dart';

@freezed
abstract class TodoUiState with _$TodoUiState {
  const factory TodoUiState.initial() = Initial;
  const factory TodoUiState(List<Todo> values) = UpdateTodoList;
  const factory TodoUiState.error(String message) = ErrorDetails;

  factory TodoUiState.fromJson(Map<String, dynamic> json) =>
      _$TodoUiStateFromJson(json);
}
