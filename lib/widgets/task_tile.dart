import 'package:flutter/material.dart';
import 'package:flutter_todoey/models/task.dart';
import 'package:flutter_todoey/models/task_model.dart';
import 'package:provider/provider.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
    required this.task,
  }) : super(key: key);

  final Task task;

  @override
  Widget build(BuildContext context) {
    final taskModel = Provider.of<TaskModel>(context, listen: false);

    return ListTile(
      title: Text(
        task.text,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
      ),
      trailing: Checkbox(
        value: task.isChecked,
        onChanged: (value) {
          taskModel.setCheckbox(task, value);
        },
      ),
    );
  }
}
