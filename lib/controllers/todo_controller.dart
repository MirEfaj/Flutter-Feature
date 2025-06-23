// import 'package:get/get.dart';
// import '../models/todo_item.dart';
//
// class TodoController extends GetxController {
//
//   final RxList<TodoItem> notes = <TodoItem>[].obs;
//
//
//   void addNote(String note) {
//     final trimmed = note.trim();
//     if (trimmed.isNotEmpty) {
//       notes.add(TodoItem(text: trimmed));
//     }
//   }
//
//   void deleteNote(int index) {
//     if (index >= 0 && index < notes.length) {
//       notes.removeAt(index);
//     }
//   }
// }