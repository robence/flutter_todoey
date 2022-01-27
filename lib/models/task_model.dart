import 'package:flutter/material.dart';
import 'package:flutter_todoey/models/task.dart';

class TaskModel extends ChangeNotifier {
  final List<Task> tasks;

  TaskModel({required this.tasks});

  void setCheckbox(Task task, bool? value) {
    if (value != null) {
      task.isChecked = value;
      notifyListeners();
    }
  }
}
