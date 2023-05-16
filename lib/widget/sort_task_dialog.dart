import 'package:flutter/material.dart';
import 'package:todo_list_app/provider/task_management.dart';

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
      title: const Text('Sort Tasks'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            onPressed: () {
              onSortByCreationDate();
              Navigator.pop(context);
            },
            child: const Text('Sort by Creation Date'),
          ),
          ElevatedButton(
            onPressed: () {
              onSortAlphabetically();
              Navigator.pop(context);
            },
            child: const Text('Sort Alphabetically'),
          ),
          ElevatedButton(
            onPressed: () {
              onSortByStatus();
              Navigator.pop(context);
            },
            child: const Text('Sort by Status'),
          ),
        ],
      ),
    );
  }
}
