import 'package:flutter/material.dart';
import 'package:todo_list_app/utils/app_theme.dart';
import 'package:todo_list_app/utils/int_constants.dart';
import 'package:todo_list_app/utils/spacing.dart';
import 'package:todo_list_app/utils/string_constants.dart';

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
        color: Colors.teal,
        borderRadius: BorderRadius.all(
          Radius.circular(defaultTwenty),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(defaultThirty),
        child: Column(
          children: [
            Text(addTaskLabel, style: ToDoAppTheme.darkTextTheme.displaySmall),
            TextField(
              controller: _addTaskController,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                hintText: enterTaskLabel,
                hintStyle: TextStyle(fontSize: defaultTwentyFive, color: Colors.white),
              ),
            ),
            const VerticalSpacing(height: defaultTwenty),
            TextButton(
              onPressed: () => addTask(),
              style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black54)),
              child: Text(
                addTaskLabel,
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
