import 'package:flutter/material.dart';
import 'package:flutter_todoey/screens/add_task_screen.dart';
import 'package:flutter_todoey/widgets/task_card.dart';
import 'package:flutter_todoey/widgets/task_header.dart';
import 'package:flutter_todoey/widgets/task_list.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tasks = List.of(['Buy milk', 'Buy eggs', 'Buy bread']);

    onPressActionButton() {
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (BuildContext context) => SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: const AddTaskScreen(),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.lightBlue,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        onPressed: onPressActionButton,
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
