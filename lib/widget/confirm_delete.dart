import 'package:flutter/material.dart';
import 'package:todo_list_app/model/list_model.dart';
import 'package:todo_list_app/utils/app_theme.dart';

class ConfirmationDialog extends StatelessWidget {
  const ConfirmationDialog({
    super.key,
    required this.task,
    required this.deleteTask,
  });

  final ListModel task;
  final Function(ListModel) deleteTask;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Confirm Delete'),
      content: const Text('Are you sure you want to delete this task?'),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Cancel', style: ToDoAppTheme.lightTextTheme.bodySmall),
        ),
        TextButton(
          onPressed: () {
            deleteTask(task);
            Navigator.pop(context);
          },
          child: Text(
            'Delete',
            style: ToDoAppTheme.lightTextTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
