import 'package:hive/hive.dart';

class ToDoDataBase{

  List taskList = [];

  final _myBox = Hive.box('myBox');

  void createInitialData(){
    taskList = [['Sample Task' , false]];
  }

  void loadData(){
    taskList = _myBox.get('TODOLISTDATA');
  }

  void updateData(){
    _myBox.put('TODOLISTDATA' , taskList);
  }
}