import 'package:simple_app/data/database/todo_provider.dart';

class Todo {
  int? id;
  String? title;
  bool? done;

  Todo();
  // Todo({
  //   required this.id,
  //   required this.title,
  //   required this.done,
  // });

  Todo.fromMap(Map map) {
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
    return 'Todo{id: $id, title: $title, done: $done}';
  }
}
