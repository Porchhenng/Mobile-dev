import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../models/expense.dart';

class ExpenseForm extends StatefulWidget {
  const ExpenseForm({super.key, required this.onCreated});

  final Function(Expense) onCreated;

  @override
  State<ExpenseForm> createState() => _ExpenseFormState();
}

class _ExpenseFormState extends State<ExpenseForm> {
  DateTime selectedDate = DateTime.now();
  final _titleController = TextEditingController();
  final _valueController = TextEditingController();

  String get title => _titleController.text;

  @override
  void dispose() {
    _titleController.dispose();
    _valueController.dispose();
    super.dispose();
  }

  Future<void> selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
            context: context,
            initialDate: selectedDate,
            firstDate: DateTime(2000),
            lastDate: DateTime(2100)) ??
        selectedDate;

        if(picked != null ){
          setState(() {
            selectedDate = picked;
          });
        }
  }

  Future<void> alertDialog(Widget content) async {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('U SURE BRU'),
            content: content,
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    'skibidi',
                    style: TextStyle(color: Colors.amber),
                  ))
            ],
          );
        });
  }

  Category? selectedCategory;

  // List of options with associated display names (using Map)
  List<String> categoryList = ['FOOD', 'WORK', 'LEISURE', 'TRAVEL'];

  void onCancel() {
    Navigator.pop(context);
  }

  void onAdd() {
    // 1- Get the values from inputs
    String title = _titleController.text;

    if (title == "" || _valueController.text == "") {
      alertDialog(const Text("walahi bru"));
      return;
    }
    double amount = double.parse(_valueController.text);

    // 2- Create the expense
    Expense expense = Expense(
        title: title,
        amount: amount,
        date: selectedDate,
        category: selectedCategory!); 

    widget.onCreated(expense);

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            decoration: const InputDecoration(
              label: Text('Title'),
            ),
          ),
        
           
              TextField(
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                ],
                controller: _valueController,
                maxLength: 50,
                decoration: const InputDecoration(
                  prefix: Text('\$ '),
                  label: Text('Amount'),
                ),
              ),
               Text(
              "${selectedDate.toLocal()}".split(' ')[0], // Displays date in YYYY-MM-DD format
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
              ElevatedButton(
                onPressed:()=> selectDate(context), child: Text('Select date'),
                ),
              
           
        
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton<Category>(
                
                value: selectedCategory,
                onChanged: (Category? newValue) {
                  setState(() {
                    selectedCategory = newValue!;
                  });
                },
                items: Category.values
                    .map<DropdownMenuItem<Category>>((Category value) {
                  return DropdownMenuItem<Category>(
                    value: value,
                    child: Text(value.toString().split('.').last),
                  );
                }).toList(),
              ),
              ElevatedButton(onPressed: onCancel, child: const Text('Cancel')),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(onPressed: onAdd, child: const Text('Create')),
            ],
          )
        ],
      ),
    );
  }
}
