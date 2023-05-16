import 'package:flutter/material.dart';
import 'package:todo_list_app/utils/app_theme.dart';
import 'package:todo_list_app/utils/spacing.dart';

class AddTaskView extends StatefulWidget {
  const AddTaskView({this.addTask, Key? key}) : super(key: key);

  final Function(String)? addTask;

  @override
  State<AddTaskView> createState() => _AddTaskViewState();
}

class _AddTaskViewState extends State<AddTaskView> {
  final _addTaskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Text('Add Task', style: ToDoAppTheme.lightTextTheme.displaySmall),
            TextField(
              controller: _addTaskController,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                hintText: 'Enter Task',
                hintStyle: TextStyle(fontSize: 25),
              ),
            ),
            const VerticalSpacing(height: 20),
            TextButton(
              onPressed: () => addTask(),
              style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black54)),
              child: Text(
                'Add Task',
                style: ToDoAppTheme.darkTextTheme.displaySmall,
              ),
            )
          ],
        ),
      ),
    );
  }

  void addTask() {
    if (_addTaskController.text.isNotEmpty && widget.addTask != null) {
      widget.addTask!(_addTaskController.text);
      Navigator.pop(context);
    }
  }
}
