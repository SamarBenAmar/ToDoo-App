import 'package:flutter/material.dart';
import 'package:todoo/database/database.dart';
import 'package:todoo/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoo/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.tasks.length,
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: taskData.tasks[index].isDone,
              taskTitle: taskData.tasks[index].name,
              checkboxChange: (newValue) {

              },
              listTileDelete: () {

              },
            );
          },
        );
      },
    );
  }
}
