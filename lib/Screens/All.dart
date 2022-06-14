import 'package:flutter/material.dart';
import 'package:tasks_flutter_app/constants/colors.dart';
import 'package:tasks_flutter_app/models/Task.dart';
import 'adds.dart';

class All extends StatefulWidget {
  final Task task;

  All(this.task);

  @override
  State<All> createState() => _AllState();
}

class _AllState extends State<All> {
  bool value1 = false;
  bool valueOne = false;
  bool valueTwo = false;
  bool valueThree = true;
  bool valueFour = true;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Mycolor.blue,
      body:  customScrollViews(context),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Add()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
Widget customScrollViews(BuildContext context){
    return CustomScrollView(
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
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 30),
                        child: Text(
                          "Late",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            CheckboxListTile(
                                title: Text('Call Max',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                subtitle: Text(
                                  "20:15-April 29",
                                  style: TextStyle(color: Mycolor.red),
                                ),
                                value: this.value1,
                                onChanged: (value) {
                                  setState(() {
                                    this.value1 = value!;
                                  });
                                })
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 30),
                        child: Text(
                          "Today",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            CheckboxListTile(
                                title: Text('Practice Piano',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                subtitle: Text(
                                  "16:00",
                                ),
                                value:valueOne,
                                onChanged: (value) {
                                  setState(() {
                                    valueOne = value!;
                                  });
                                })
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            CheckboxListTile(
                                title: Text('Learn Spanish',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                subtitle: Text(
                                  "17:00",
                                ),
                                value: valueTwo,
                                onChanged: (value) {
                                  setState(() {
                                    valueTwo = value!;
                                  });
                                })
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 30),
                        child: Text(
                          "Done",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            CheckboxListTile(
                                title: Text('Finalize Presentation',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        decoration:
                                        TextDecoration.lineThrough)),
                                subtitle: Text(
                                  "9:00-11:30",
                                ),
                                value: valueThree,
                                onChanged: (value) {
                                  setState(() {
                                    valueThree = value!;
                                  });
                                }),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            CheckboxListTile(
                                title: Text('Football Practice',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        decoration:
                                        TextDecoration.lineThrough)),
                                subtitle: Text(
                                  "11:30-12:30",
                                ),
                                value: valueFour,
                                onChanged: (value) {
                                  setState(() {
                                    valueFour = value!;
                                  });
                                }),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
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
                    widget.task.iconData,
                    color: Mycolor.blue,
                    size: 35,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 60),
                Text(
                  widget.task.title!,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Mycolor.white),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 60),
                Text(
                  widget.task.subtitle!,
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
