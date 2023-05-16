import 'package:flutter/material.dart';
import 'package:todo_list_app/model/list_model.dart';
import 'package:todo_list_app/utils/app_theme.dart';
import 'package:todo_list_app/utils/string_constants.dart';

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
      title: const Text(updateStatusLabel),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RadioListTile<TaskStatus>(
            title: const Text(doneLabel),
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
            title: const Text(pendingLabel),
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
            title: const Text(inProgressLabel),
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
            updateLabel,
            style: ToDoAppTheme.lightTextTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
