import 'dart:convert';

import 'package:get_storage/get_storage.dart';
import 'package:tasks_flutter_app/constants/todo_model.dart';

class TodoData {
  static List<Map<String, dynamic>> All = [];
  static List<Map<String, dynamic>> Work = [];
  static List<Map<String, dynamic>> Music = [];
  static List<Map<String, dynamic>> Travel = [];
  static List<Map<String, dynamic>> Study = [];
  static List<Map<String, dynamic>> Home = [];
  static List<Map<String, dynamic>> Paint = [];
  static List<Map<String, dynamic>> Shopping = [];
  static late TodoModel todoModel;

  static late GetStorage todo;
  static late Map<String, dynamic> allData;
  static const String storageName = 'allData';

  static todoInit() async {
    todo = GetStorage('TodoStorage');
    await GetStorage.init('TodoStorage');
    await readAllData();
  }

  static readAllData() {
    if (todo.read(storageName) == null) return;
    allData = todo.read(storageName);
    All.add(allData);
    Work.add(allData['Work']);
    Music.add(allData['Music']);
    Travel.add(allData['Travel']);
    Study.add(allData['Study']);
    Home.add(allData['Home']);
    Paint.add(allData['Paint']);
    Shopping.add(allData['Shopping']);
  }

  static storeTodo(Map<String, dynamic> data) {
    if (todoModel == null) {
      todoModel = TodoModel();
    }
    todoModel = todoModelFromJson(jsonEncode(data));
    todo.write(todoModel.category!, data);
  }

  static readTodo(String category) async {
    if (todoModel == null) {
      todoModel = TodoModel();
    }

    switch (category) {
      case 'All':
        All.clear();
        All.add(await todo.read(category));
        break;
      case 'Work':
        Work.clear();
        Work.add(await todo.read(category));
        break;
      case 'Music':
        Music.clear();
        Music.add(await todo.read(category));
        break;
      case 'Study':
        Study.clear();
        Study.add(await todo.read(category));
        break;
      case 'Home':
        Home.clear();
        Home.add(await todo.read(category));
        break;
      case 'Shopping':
        Shopping.clear();
        Shopping.add(await todo.read(category));
        break;
      case 'Paint':
        Paint.clear();
        Paint.add(await todo.read(category));
        break;
    }
    //  todoModel = todoModelFromJson(jsonEncode(data));
    // todo.write(todoModel.category!,data);
  }
}
