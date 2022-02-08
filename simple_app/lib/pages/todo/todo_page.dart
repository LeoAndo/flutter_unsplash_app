import 'package:flutter/material.dart';
import 'package:simple_app/data/database/todo_provider.dart';
import 'package:simple_app/data/models/todo.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  TodoProvider todoProvider = TodoProvider();
  List<Todo> _todoList = List.empty();

  Future addTodoList() async {
    todoProvider = TodoProvider();
    final todo = Todo()
      ..title = "test1"
      ..done = false;
    await todoProvider.insert(todo);
    final todo2 = Todo()
      ..title = "test2"
      ..done = true;
    await todoProvider.insert(todo2);
    final todo3 = Todo()
      ..title = "test3"
      ..done = false;
    await todoProvider.insert(todo3);
  }

  @override
  void initState() {
    super.initState();
    addTodoList();
  }

  @override
  Widget build(BuildContext context) {
    todoProvider.getTodoList().then((value) => {
          setState(() {
            _todoList = value;
          })
        });
    return Scaffold(
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: _todoList.length,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 50,
                child: Center(child: Text('id ${_todoList[index].id}')),
              );
            }));
  }
}
