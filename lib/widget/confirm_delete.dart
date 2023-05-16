import 'package:flutter/material.dart';
import 'package:todo_list_app/model/list_model.dart';
import 'package:todo_list_app/utils/app_theme.dart';
import 'package:todo_list_app/utils/string_constants.dart';

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
      title: const Text(confirmDeleteLabel),
      content: const Text(deleteTaskLabel),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(cancelLabel, style: ToDoAppTheme.lightTextTheme.bodySmall),
        ),
        TextButton(
          onPressed: () {
            deleteTask(task);
            Navigator.pop(context);
          },
          child: Text(
            deleteLabel,
            style: ToDoAppTheme.lightTextTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
