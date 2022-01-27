import 'package:flutter/material.dart';
import 'package:flutter_todoey/widgets/task_card.dart';
import 'package:flutter_todoey/widgets/task_header.dart';
import 'package:flutter_todoey/widgets/task_list.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tasks = List.of(['Buy milk', 'Buy eggs', 'Buy bread']);

    return Scaffold(
      backgroundColor: Colors.lightBlue,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 44.0,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TaskHeader(),
          TaskCard(
            child: TaskList(tasks: tasks),
          )
        ],
      ),
    );
  }
}
