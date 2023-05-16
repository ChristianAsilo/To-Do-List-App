import 'package:flutter/material.dart';
import 'package:todo_list_app/provider/task_management.dart';
import 'package:todo_list_app/utils/string_constants.dart';

class SortTasksDialog extends StatelessWidget {
  const SortTasksDialog({
    Key? key,
    required this.taskManagement,
    required this.onSortByCreationDate,
    required this.onSortAlphabetically,
    required this.onSortByStatus,
  }) : super(key: key);

  final TaskManagement taskManagement;
  final VoidCallback onSortByCreationDate;
  final VoidCallback onSortAlphabetically;
  final VoidCallback onSortByStatus;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(sortTaskLabel),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.teal)),
            onPressed: () {
              onSortByCreationDate();
              Navigator.pop(context);
            },
            child: const Text(sortCreationDateLabel),
          ),
          ElevatedButton(
            style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.teal)),
            onPressed: () {
              onSortAlphabetically();
              Navigator.pop(context);
            },
            child: const Text(sortAlphabeticallyLabel),
          ),
          ElevatedButton(
            style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.teal)),
            onPressed: () {
              onSortByStatus();
              Navigator.pop(context);
            },
            child: const Text(sortStatusLabel),
          ),
        ],
      ),
    );
  }
}
