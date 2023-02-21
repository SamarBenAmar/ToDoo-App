import 'package:todoo/models/task.dart';
import 'package:todoo/database/databaseRepo.dart';

class TaskService{
  DatabaseRepo? _databaseRepo;
  TaskService(){
    _databaseRepo = DatabaseRepo();
  }
  saveTask(Task task) async {
    return await _databaseRepo?.insertData('Task', task.taskMap());
  }
}