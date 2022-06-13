import 'package:flutter/material.dart';
import 'package:tasks_flutter_app/Screens/All.dart';
import 'package:tasks_flutter_app/models/Task.dart';
class Tasks extends StatelessWidget {
  final tasksLists = Task.generateTasks();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
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
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>All(task)));
      },
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: task.bgColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(task.iconData,
              color: task.iconColor,
              size: 35,
            ),
            SizedBox(height: MediaQuery.of(context).size.height/50,),
            Text(task.title!,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/50,),
            Text(task.subtitle!)
          ],
        ),
      ),
    );
  }
}
