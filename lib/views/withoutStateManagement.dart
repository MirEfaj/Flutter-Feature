import 'package:flutter/material.dart';

class withoutStateManagement extends StatefulWidget {
  const withoutStateManagement({super.key});

  @override
  State<withoutStateManagement> createState() => _withoutStateManagementState();
}

class _withoutStateManagementState extends State<withoutStateManagement> {

  List<String> notes = [];
  TextEditingController noteController = TextEditingController();
  notesAdd(){
    if(noteController.text.trim().isNotEmpty){
      setState(() {
        notes.add(noteController.text.trim());
        noteController.clear();
      });
    }
  }
  noteDelete(index){
    setState(() {
      notes.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Todos', style: TextStyle(fontSize: 20, color: Colors.white),),
        backgroundColor: Colors.blue,
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
                      controller:noteController ,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                  GestureDetector(
                    onTap: notesAdd,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(child: Text('Add', style: TextStyle(fontSize: 20, color: Colors.white),)),
                    ),
                  )
                ],
              ),

              Expanded(
                child: ListView.builder(
                    itemCount: notes.length,
                    itemBuilder: (context, index){
                      return Card(
                        shadowColor: Colors.blue,
                        color: Colors.blue.shade50,
                        elevation: 8,
                        child: ListTile(
                          title: Text(notes[index]),
                          trailing: IconButton(onPressed: ()=> noteDelete(index), icon: Icon(Icons.delete_outline,color: Colors.redAccent,)),
                        ),
                      );
                    }),
              )
            ]
        ),
      ),
    );
  }
}
