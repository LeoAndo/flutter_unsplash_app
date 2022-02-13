import 'package:simple_app/data/database/entities/todo_entity.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

@freezed
class Todo with _$Todo {
  factory Todo({
    int? id,
    String? title,
    bool? done,
  }) = _Todo;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}

extension TodoListExt on List<Todo> {
  List<TodoEntity> toEntities() {
    return map((model) => TodoEntity(model.id, model.title, model.done))
        .toList();
  }
}

extension TodoExt on Todo {
  TodoEntity toEntity() {
    return TodoEntity(id, title, done);
  }
}
