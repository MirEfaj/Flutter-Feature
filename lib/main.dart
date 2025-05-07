import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/todo_controller.dart';
import 'views/home_page.dart';

void main() {
 Get.put<TodoController>(TodoController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo MVC App',
      home: HomePage(),
    );
  }
}