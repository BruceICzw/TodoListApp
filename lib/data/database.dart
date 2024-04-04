import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  final _myBox = Hive.box('todo');

  void createInitialData() {
    toDoList = [
      ["Workout", false],
      ["Laundry", false],
    ];
  }

  //load data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST") ?? [];
  }

  //update database
  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
