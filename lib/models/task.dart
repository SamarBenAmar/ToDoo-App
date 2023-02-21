import 'package:todoo/main.dart';

class Task {
  String name='';
  bool isDone;
  int? id;

  Task({ required this.name, this.isDone = false});
  Task.withId({required this.id, required this.name, required this.isDone});

  void doneChange() {
    isDone = !isDone;
  }

  taskMap(){
    var mapping = Map<String, dynamic>();
    mapping['id'] = id;
    mapping['name'] = name;
    mapping['isDone'] = isDone;
    return mapping;
  }

  factory Task.fromMap(Map<String, dynamic> map){
    return Task.withId(id: map['id'],
        name: map['name'],
        isDone: map['isDone']);
  }

}
