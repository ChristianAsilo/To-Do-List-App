import 'package:flutter/material.dart';
import 'package:todo_list_app/model/list_model.dart';
import 'package:todo_list_app/utils/app_theme.dart';

class TaskStatusDialog extends StatefulWidget {
  final ListModel task;
  final List<ListModel> taskList;
  final Function(ListModel task, TaskStatus newStatus) updateTaskStatus;

  const TaskStatusDialog({
    Key? key,
    required this.task,
    required this.taskList,
    required this.updateTaskStatus,
  }) : super(key: key);

  @override
  TaskStatusDialogState createState() => TaskStatusDialogState();
}

class TaskStatusDialogState extends State<TaskStatusDialog> {
  TaskStatus? _selectedStatus;

  @override
  void initState() {
    super.initState();
    _selectedStatus = widget.task.status;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Update Task Status'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RadioListTile<TaskStatus>(
            title: const Text('Done'),
            value: TaskStatus.done,
            groupValue: _selectedStatus,
            onChanged: (value) {
              if (value != null) {
                setState(() {
                  _selectedStatus = value;
                });
              }
            },
          ),
          RadioListTile<TaskStatus>(
            title: const Text('Pending'),
            value: TaskStatus.pending,
            groupValue: _selectedStatus,
            onChanged: (value) {
              if (value != null) {
                setState(() {
                  _selectedStatus = value;
                });
              }
            },
          ),
          RadioListTile<TaskStatus>(
            title: const Text('In Progress'),
            value: TaskStatus.inProgress,
            groupValue: _selectedStatus,
            onChanged: (value) {
              if (value != null) {
                setState(() {
                  _selectedStatus = value;
                });
              }
            },
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            if (_selectedStatus != null) {
              widget.updateTaskStatus(widget.task, _selectedStatus!);
            }
            Navigator.pop(context);
          },
          child: Text(
            'Update',
            style: ToDoAppTheme.lightTextTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
