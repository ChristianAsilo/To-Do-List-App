import 'package:flutter/material.dart';
import 'package:todo_list_app/feature/to_do_app_home_page.dart';

void main() {
  runApp(const TodoListApp());
}

class TodoListApp extends StatelessWidget {
  const TodoListApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TodoAppHomePage(),
    );
  }
}



