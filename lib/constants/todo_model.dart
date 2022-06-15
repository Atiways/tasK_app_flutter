// To parse this JSON data, do
//
//     final todoModel = todoModelFromJson(jsonString);

import 'dart:convert';

TodoModel todoModelFromJson(String str) => TodoModel.fromJson(json.decode(str));

String todoModelToJson(TodoModel data) => json.encode(data.toJson());

class TodoModel {
  TodoModel({
    this.planning,
    this.date,
    this.note,
    this.category,
  });

  String? planning;
  String? date;
  String? note;
  String? category;

  factory TodoModel.fromJson(Map<String, dynamic> json) => TodoModel(
    planning: json["Planning"],
    date: json["date"],
    note: json["note"],
    category: json["category"],
  );

  Map<String, dynamic> toJson() => {
    "Planning": planning,
    "date": date,
    "note": note,
    "category": category,
  };
}