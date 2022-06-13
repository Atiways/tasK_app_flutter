import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasks_flutter_app/constants/colors.dart';
import 'package:tasks_flutter_app/widgets/Tasks.dart';

class lists extends StatefulWidget {
  const lists({Key? key}) : super(key: key);

  @override
  State<lists> createState() => _listsState();
}

class _listsState extends State<lists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Mycolor.white,
        elevation: 0,
        leading: const Icon(
          Icons.menu,
          color: Mycolor.black,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: const Text(
              'Lists',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(child: Tasks())
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
