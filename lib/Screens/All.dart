import 'package:flutter/material.dart';
import 'package:tasks_flutter_app/constants/colors.dart';
import 'package:tasks_flutter_app/models/Task.dart';

class All extends StatelessWidget {
  final Task task;

  All(this.task);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolor.blue,
      body: CustomScrollView(
        slivers: [
          _buildAppBar(context),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                color: Mycolor.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 230,
      backgroundColor: Mycolor.blue,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.navigate_before),
        iconSize: 30,
      ),
      actions: [
        Icon(
          Icons.more_vert,
          size: 30,
        )
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 38.0, top: 95),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Mycolor.white,
                  child: Icon(
                    task.iconData,
                    color: Mycolor.blue,
                    size: 35,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 60),
                Text(
                  task.title!,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Mycolor.white),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 60),
                Text(
                  task.subtitle!,
                  style: TextStyle(color: Mycolor.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
