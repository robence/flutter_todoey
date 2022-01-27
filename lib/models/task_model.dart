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

  void addTask(String text) {
    tasks.add(Task(text: text));
    notifyListeners();
  }

  void removeTask(Task task) {
    tasks.removeWhere((element) => element.text == task.text);
    notifyListeners();
  }
}
