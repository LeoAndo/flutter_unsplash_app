import 'package:simple_app/data/database/todo_database_open_helper.dart';
import 'package:simple_app/domain/models/todo.dart';

class TodoEntity {
  int? id;
  String? title;
  bool? done;

  TodoEntity(this.id, this.title, this.done);

  TodoEntity.fromMap(Map map) {
    id = map[columnId] as int?;
    title = map[columnTitle] as String?;
    done = map[columnDone] == 1;
  }

  Map<String, dynamic> toMap() {
    return {
      columnId: id,
      columnTitle: title,
      columnDone: done,
    };
  }

  @override
  String toString() {
    return 'TodoEntity{id: $id, title: $title, done: $done}';
  }
}

extension TodoEntitiesExt on List<TodoEntity> {
  List<Todo> toModels() {
    return map(
            (model) => Todo(id: model.id, title: model.title, done: model.done))
        .toList();
  }
}

extension TodoEntityExt on TodoEntity {
  Todo toModel() {
    return Todo(id: id, title: title, done: done);
  }
}
