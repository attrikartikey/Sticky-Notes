import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];


  //reference the hive box
  final _myBox = Hive.box('mybox');

  //run this method if this is the first time evver running this app
  void createInitialData(){
    toDoList = [
      ["Make Notes", false],
      ["Study for exams", false],
    ];
  }

  //load data from database
  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }

  //update the database
  void updateDataBase(){
    _myBox.put("TODOLIST", toDoList);
  }
}