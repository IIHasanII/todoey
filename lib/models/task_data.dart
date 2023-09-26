import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier{
  final List<Task> _tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Eggs'),
    Task(name: 'Buy Bread')
  ];

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  int get taskCount{
    return _tasks.length;
  }
  
  void addString (String newList){
    
    _tasks.add(Task(name: newList));
    notifyListeners();

  }

  void updateTask (Task task){
    task.toggleDone();
    notifyListeners();

  }

  void deleteTask (Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}

