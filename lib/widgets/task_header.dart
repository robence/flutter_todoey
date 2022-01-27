import 'package:flutter/material.dart';
import 'package:flutter_todoey/models/task_model.dart';
import 'package:provider/provider.dart';

class TaskHeader extends StatelessWidget {
  const TaskHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final taskModel = Provider.of<TaskModel>(context, listen: false);

    return Container(
      padding: const EdgeInsets.only(
          top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.list,
              color: Colors.lightBlue,
              size: 30.0,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Todoey',
            style: TextStyle(
                fontSize: 50, color: Colors.white, fontWeight: FontWeight.w700),
          ),
          Text(
            '${taskModel.tasks.length} Tasks',
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
