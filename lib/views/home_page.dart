import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/todo_controller.dart';

class HomePage extends GetView<TodoController> {
  HomePage({super.key});

  final TextEditingController noteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Todos', style: TextStyle(fontSize: 20)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: noteController,
                    decoration: InputDecoration(
                      hintText: 'Write your notes',
                      hintStyle: TextStyle(
                        color: Colors.black38
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: (){
                    controller.addNote(noteController.text);
                    noteController.clear();
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text("Add", style: TextStyle(color: Colors.white, fontSize: 18),)),
                  ),
                )
              ],
            ),
            const SizedBox(height: 12),
            // Reactive List
            Expanded(
              child: Obx(() {
                return ListView.builder(
                  itemCount: controller.notes.length,
                  itemBuilder: (context, index) {
                    final item = controller.notes[index];
                    return Card(
                      elevation: 5,
                      child: ListTile(
                        title: Text(item.text),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete_outline, color: Colors.redAccent),
                          onPressed: () => controller.deleteNote(index),
                        ),
                      ),
                    );
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}