import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoo/models/task_data.dart';
import 'package:todoo/services/task_service.dart';

import '../models/task.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;

  AddTaskScreen(this.addTaskCallback);
  var _taskTitleController = TextEditingController();
  var _task = Task(name: '');
  var _taskservice = TaskService();

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.deepPurpleAccent[400],
                fontWeight: FontWeight.bold,
              )),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          SizedBox(height: 30),
          TextButton(
            onPressed: () async{
              _task.name= _taskTitleController.text;
              Provider.of<TaskService>(context, listen: false)
                  .saveTask(_task);
              Navigator.pop(context);
            },
            child: Text('Add'),
            style: TextButton.styleFrom(
              backgroundColor: Colors.deepPurpleAccent[200],
              primary: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
