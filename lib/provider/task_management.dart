import 'package:flutter/material.dart';
import 'package:todo_list_app/model/list_model.dart';
import 'package:todo_list_app/utils/string_constants.dart';

class TaskManagement extends ChangeNotifier {
  //List of Task
  List<ListModel> taskList = [
    ListModel(
      text: defaultTaskLabel,
      creationDate: DateTime.now(),
      status: TaskStatus.pending,
    )
  ];

  //Update Task Status
  void updateTaskStatus(ListModel task, TaskStatus newStatus) {
    task.status = newStatus;
    notifyListeners();
  }

  //Add new Task
  void addTask(String text) {
    taskList.add(ListModel(
      text: text,
      creationDate: DateTime.now(),
    ));
    notifyListeners();
  }

  //Delete Specific Task
  void deleteTask(ListModel task) {
    taskList.remove(task);
    notifyListeners();
  }

  //Sort Task By Creation Date
  void sortTaskByCreationDate() {
    taskList.sort();
    notifyListeners();
  }

  //Sort Task Alphabetically
  void sortTasksAlphabetically() {
    taskList.sort((a, b) => a.text.compareTo(b.text));
    notifyListeners();
  }

  //Sort Task by Status
  void sortTasksByStatus() {
    taskList.sort((a, b) => a.status.index.compareTo(b.status.index));
    notifyListeners();
  }
}
