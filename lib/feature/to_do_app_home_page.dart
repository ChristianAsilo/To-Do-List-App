import 'package:flutter/material.dart';
import 'package:todo_list_app/feature/app_theme.dart';
import 'package:todo_list_app/utils/spacing.dart';

class TodoAppHomePage extends StatelessWidget {
  const TodoAppHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 50,
                bottom: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.black54,
                    radius: 30,
                    child: Icon(
                      Icons.list,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                  const VerticalSpacing(height: 20),
                  Text(
                    'To-Do List Apps',
                    style: ToDoAppTheme.LightTextTheme.displayMedium,
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
              decoration: const BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black54,
        child: const Icon(Icons.add),
      ),
    );
  }
}
