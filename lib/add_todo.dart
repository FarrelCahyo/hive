import 'package:flutter/material.dart';

class AddTodo extends StatefulWidget {
  const AddTodo({super.key});

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Todo"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextFormField(
                autofocus: false,
                decoration: InputDecoration(labelText: "Judul"),
              ),
              TextFormField(
                autofocus: false,
                decoration: InputDecoration(labelText: "Sub Judul"),
              ),
              SizedBox(height: 30,),
              OutlinedButton(onPressed: (){}, child: Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}
