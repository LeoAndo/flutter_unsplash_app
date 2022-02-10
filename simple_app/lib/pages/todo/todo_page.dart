import 'package:flutter/material.dart';
import 'package:simple_app/data/database/todo_dao.dart';
import 'package:simple_app/data/models/todo.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  TodoDao todoDao = TodoDao();
  List<Todo> _todoList = List.empty();
  final textEditingController = TextEditingController();

  _fetchTodoList() {
    todoDao.getTodoList().then((value) => {
          setState(() {
            _todoList = value;
          })
        });
  }

  _onTapCardItem(Todo item) {
    todoDao.update(item..done = true);
    _fetchTodoList();
  }

  _onPressedAddButton() {
    if (textEditingController.text.isEmpty) return;
    final todo = Todo()
      ..title = textEditingController.text
      ..done = false;
    todoDao.insert(todo);
    textEditingController.clear();
    _fetchTodoList();
  }

  _onPressedDeleteButton() {
    if (_todoList.isEmpty) return;
    todoDao.delete(_todoList[0].id!);
    _fetchTodoList();
  }

  @override
  void initState() {
    super.initState();
    _fetchTodoList();
  }

  @override
  void dispose() {
    super.dispose();
    textEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: textEditingController,
                obscureText: false,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'todo memo',
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: _todoList.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = _todoList[index];

                    return GestureDetector(
                      child: Card(
                        child: ListTile(
                          title: Text('${item.title}'),
                          subtitle: Text('isDone: ${item.done}'),
                        ),
                      ),
                      onTap: () => {_onTapCardItem(item)},
                    );
                  }),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () => _onPressedAddButton(),
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 16,
          ),
          FloatingActionButton(
            onPressed: () => _onPressedDeleteButton(),
            child: const Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}
