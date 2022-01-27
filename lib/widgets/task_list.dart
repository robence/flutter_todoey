import 'package:flutter/material.dart';
import 'package:flutter_todoey/models/task_model.dart';
import 'package:flutter_todoey/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tasks = Provider.of<TaskModel>(context, listen: true).tasks;

    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(task: tasks[index]);
      },
    );
  }
}
