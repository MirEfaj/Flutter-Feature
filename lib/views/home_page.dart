import 'package:flutter/material.dart';
import 'package:todo/models/todo_item.dart';
import 'package:intl/intl.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String dropdownValue = "Food";
  List<String> categories = ["Food", "Shopping", "Bike", "Rent", "Others"];
  double total = 0.0;
  final List<Expense> _expense = [];
  void addExpense(String title,double amount, DateTime date, String categori){
    _expense.add(Expense(title: title, amount: amount, date: date, Catgori: categori));
  setState(() {});
    total += amount;


  }


  void _showForm(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    TextEditingController amountController = TextEditingController();
    DateTime expenseDateTime = DateTime.now();
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: titleController,
                decoration: const InputDecoration(
                    hintText: 'Title'
                ),
              ),
              const SizedBox(height: 10,),
               TextField(
                 controller: amountController,
                decoration: InputDecoration(
                    hintText: 'Amount'
                ),
              ),
              const SizedBox(height: 10,),
              DropdownButtonFormField<String>(
                value: dropdownValue,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: categories.map((category) => DropdownMenuItem<String>(
                  value: category,
                  child: Text(category))).toList(),
                onChanged: (value) {
                  setState(() {
                    dropdownValue = value!;
                  });
                },
              ),
              const SizedBox(height: 10,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){
                  if(titleController.text.trim().isNotEmpty ||  double.parse(amountController.text.trim()) != null){
                  addExpense(titleController.text.trim(), double.parse(amountController.text.trim()), expenseDateTime, dropdownValue);
                  titleController.clear();
                  amountController.clear();
                  Navigator.pop(context);
                  }
                },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),  
                    child: Text("Save", style: TextStyle(fontSize: 20),)),
              )
        ]
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expense Tracker"),
        actions: [
          IconButton(
            onPressed: () {
              _showForm(context);
            },
            icon: const Icon(Icons.add),
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Center(
            child: Card(
              margin: EdgeInsets.all(20),
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 20),
                child: Text("Total : $total", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _expense.length,
                itemBuilder: (context, index){
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(_expense[index].Catgori),
                      ),
                      title: Text(_expense[index].title),
                      subtitle: Text(
                          DateFormat('dd MMM yyyy').format(_expense[index].date)
                      ),

                    ),
                  );
                }),
          )

        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){_showForm(context);}, child: Icon(Icons.add),)
    );
  }
}
