enum TaskStatus {
  done,
  pending,
  inProgress,
}

extension TaskStatusExtension on TaskStatus {
  String get statusText {
    switch (this) {
      case TaskStatus.done:
        return 'Done';
      case TaskStatus.pending:
        return 'Pending';
      case TaskStatus.inProgress:
        return 'In Progress';
      default:
        return '';
    }
  }
}

class ListModel {
  final String text;
  final DateTime creationDate;
  TaskStatus status;

  ListModel({
    required this.text,
    required this.creationDate,
    this.status = TaskStatus.pending,
  });
}
