import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_app/feature/to_do_app_home_page.dart';
import 'package:todo_list_app/provider/task_management.dart';

void main() {
  runApp(const TodoListApp());
}

class TodoListApp extends StatelessWidget {
  const TodoListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<TaskManagement>(
          create: (_) => TaskManagement(),
        )
      ],
      child: const MaterialApp(
        home: TodoAppHomePage(),
      ),
    );
  }
}
