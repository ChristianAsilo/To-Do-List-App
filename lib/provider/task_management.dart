import 'package:flutter/material.dart';
import 'package:todo_list_app/model/list_model.dart';

class TaskManagement extends ChangeNotifier {
  List<ListModel> taskList = [
    ListModel(text: 'Default Task', creationDate: DateTime.now(), status: TaskStatus.pending)
  ];

  void updateTaskStatus(ListModel task, TaskStatus newStatus) {
    task.status = newStatus;
    notifyListeners();
  }

  void addTask(String text) {
    taskList.add(ListModel(
      text: text,
      creationDate: DateTime.now(),
    ));
    notifyListeners();
  }

  void deleteTask(ListModel task) {
    taskList.remove(task);
    notifyListeners();
  }

  void sortTaskByCreationDate() {
    taskList.sort();
    notifyListeners();
  }

  void sortTasksAlphabetically() {
    taskList.sort((a, b) => a.text.compareTo(b.text));
    notifyListeners();
  }

  void sortTasksByStatus() {
    taskList.sort((a, b) => a.status.index.compareTo(b.status.index));
    notifyListeners();
  }
}
