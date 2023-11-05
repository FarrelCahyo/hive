import 'package:flutter/material.dart';
import 'package:latihan_hive/add_todo.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo List"),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Dismissible(
            background: Container(color: Colors.red,),
            key: UniqueKey(),
            child: ListTile(
              title: Text("Judul ${index + 1}"),
              subtitle: Text("Sub Judul ${index + 1}"),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return AddTodo();
          }));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
