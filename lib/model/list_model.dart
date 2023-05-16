import 'package:todo_list_app/utils/string_constants.dart';

enum TaskStatus {
  done,
  pending,
  inProgress,
}

//Display Task Status Label
extension TaskStatusExtension on TaskStatus {
  String get statusText {
    switch (this) {
      case TaskStatus.done:
        return doneLabel;
      case TaskStatus.pending:
        return pendingLabel;
      case TaskStatus.inProgress:
        return inProgressLabel;
      default:
        return emptyString;
    }
  }
}

class ListModel implements Comparable<ListModel> {
  final String text;
  final DateTime creationDate;
  TaskStatus status;

  ListModel({
    required this.text,
    required this.creationDate,
    this.status = TaskStatus.pending,
  });

  @override
  int compareTo(ListModel other) {
    return creationDate.compareTo(other.creationDate);
  }
}
