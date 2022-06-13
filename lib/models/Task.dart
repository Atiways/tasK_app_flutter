import 'package:flutter/material.dart';
import 'package:tasks_flutter_app/constants/colors.dart';
class Task{
  IconData? iconData;
  String? title;
  Color? iconColor;
  String? subtitle;
  Color? bgColor;

  Task({
    this.iconData,this.title,this.iconColor,this.subtitle,this.bgColor,
});
  static List<Task> generateTasks(){
    return[
      Task(
        iconData: Icons.wysiwyg,
        title: "All",
        bgColor: Mycolor.white,
        iconColor: Mycolor.lightBlue,
        subtitle: '23 tasks',
      ),
      Task(
        iconData: Icons.email,
        title: "Work",
        bgColor: Mycolor.white,
        iconColor: Mycolor.yellow,
        subtitle: '14 tasks',
      ),
      Task(
        iconData: Icons.music_note,
        title: "Music",
        bgColor: Mycolor.white,
        iconColor: Mycolor.lightRed,
        subtitle: '6 tasks',
      ),
      Task(
        iconData: Icons.airplanemode_active,
        title: "Travel",
        bgColor: Mycolor.white,
        iconColor: Mycolor.green,
        subtitle: '1 task',
      ),
      Task(
        iconData: Icons.book,
        title: "Study",
        bgColor: Mycolor.white,
        iconColor: Mycolor.lightPurple,
        subtitle: '2 tasks',
      ),
      Task(
        iconData: Icons.home,
        title: "Home",
        bgColor: Mycolor.white,
        iconColor: Mycolor.lightBlue,
        subtitle: '14 tasks',
      ),
      Task(
        iconData: Icons.palette_outlined,
        title: "Paint",
        bgColor: Mycolor.white,
        iconColor: Mycolor.purple,
        subtitle: '7 tasks',
      ),
      Task(
        iconData: Icons.shopping_cart,
        title: "Shopping",
        bgColor: Mycolor.white,
        iconColor: Mycolor.cyan,
        subtitle: '8 tasks',
      ),
    ];
  }
}