import 'package:flutter/material.dart';
import 'package:todoey/Screens/TaskScreen.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) { return TaskData(); },
      child: const MaterialApp(
        home:  TaskScreen(),
      ),
    );
  }
}
