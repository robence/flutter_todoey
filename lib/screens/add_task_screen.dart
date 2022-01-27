import 'package:flutter/material.dart';
import 'package:flutter_todoey/models/task_model.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final taskModel = Provider.of<TaskModel>(context, listen: false);
    final textController = TextEditingController();

    return Container(
      color: const Color(0xff757575),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 48.0, vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28, color: Colors.lightBlue),
              ),
              TextField(
                controller: textController,
                autofocus: true,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.lightBlue),
                  onPressed: () {
                    taskModel.addTask(textController.text);
                    textController.clear();
                    Navigator.pop(context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    child: Text(
                      'Add',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
