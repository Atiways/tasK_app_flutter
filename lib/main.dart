import 'package:flutter/material.dart';
import 'package:tasks_flutter_app/Screens/Lists.dart';

import 'constants/db.dart';


void main() {
  TodoData.todoInit();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'task app ui',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: lists(),
      debugShowCheckedModeBanner: false,
    );
  }
}
