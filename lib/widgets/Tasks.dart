import 'package:flutter/material.dart';
import 'package:tasks_flutter_app/models/Task.dart';
class Tasks extends StatelessWidget {
  final tasksLists = Task.generateTasks();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
          itemCount: tasksLists.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10
          ),
          itemBuilder: (context,index)=>_buildTask(context,tasksLists[index])),

    );
  }

  Widget _buildTask(BuildContext context, Task task){
    return Text("Task");
  }
}
