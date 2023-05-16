import 'package:flutter/material.dart';
import 'package:todo_list_app/model/list_model.dart';
import 'package:todo_list_app/provider/task_management.dart';
import 'package:todo_list_app/utils/app_theme.dart';
import 'package:todo_list_app/utils/spacing.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_app/widget/confirm_delete.dart';
import 'package:todo_list_app/widget/floating_action_button.dart';
import 'package:todo_list_app/widget/sort_task_dialog.dart';
import 'package:todo_list_app/widget/task_status_dialog.dart';
import 'add_task_view.dart';

class TodoAppHomePage extends StatelessWidget {
  const TodoAppHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskManagement>(
      builder: (context, taskManagement, child) {
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
                        style: ToDoAppTheme.lightTextTheme.displayMedium,
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
                    child: ListView.builder(
                      itemCount: taskManagement.taskList.length,
                      itemBuilder: (context, index) {
                        final task = taskManagement.taskList[index];
                        return Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                          child: ListTile(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) => TaskStatusDialog(
                                  task: task,
                                  taskList: taskManagement.taskList,
                                  updateTaskStatus: taskManagement.updateTaskStatus,
                                ),
                              );
                            },
                            title: Text(task.text, style: ToDoAppTheme.darkTextTheme.displaySmall),
                            subtitle: Text(task.status.statusText, style: ToDoAppTheme.darkTextTheme.bodySmall),
                            trailing: IconButton(
                              icon: const Icon(Icons.delete, color: Colors.white),
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) => ConfirmationDialog(
                                    task: task,
                                    deleteTask: taskManagement.deleteTask,
                                  ),
                                );
                              },
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: CustomFloatingActionButton(
            onAddPressed: () => showModalBottomSheet(
              context: context,
              builder: (context) => AddTaskView(addTask: taskManagement.addTask),
            ),
            onSortPressed: () {
              showDialog(
                context: context,
                builder: (context) => SortTasksDialog(
                  taskManagement: taskManagement,
                  onSortByCreationDate: () => taskManagement.sortTaskByCreationDate(),
                  onSortAlphabetically: () => taskManagement.sortTasksAlphabetically(),
                  onSortByStatus: () => taskManagement.sortTasksByStatus(),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
