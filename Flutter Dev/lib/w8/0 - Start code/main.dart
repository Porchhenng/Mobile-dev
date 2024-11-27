import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'package:w3_s3_practice/w8/0%20-%20Start%20code/models/expense.dart';

void main() {
  runApp(MyApp());
}
class ExpenseButton extends StatefulWidget{
  @override
  State<ExpenseButtonState> createState() {
    // TODO: implement createState
    ;
  }

class ExpenseButtonState extends State<ExpenseButton>{

}
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text('Ronan the best'),
              Spacer(),

            
            ],
          ),
          backgroundColor: Colors.blue,
          actions: <ExpenseButton> [

          ],
        ),
        body: ExpenseList(),
      ),
    );
  }
}


class ExpenseList extends StatelessWidget {
  final List<Expense> expenses = [
    Expense(title: 'Ronan', price: 12.5, date: DateTime.now(), category: ExpenseType.food),
    Expense(title: 'Chheng', price: 3.8, date: DateTime.now(), category: ExpenseType.lesure),
    Expense(title: 'chhenhsda', price: 50.0, date: DateTime.now(), category: ExpenseType.travel),
    Expense(title: 'Tdawdawd', price: 20.0, date: DateTime.now(), category: ExpenseType.work),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) {
        final expense = expenses[index];
        return Card(
          margin: EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(
              child: Text('\$${expense.price.toStringAsFixed(0)}'),
            ),
            title: Text('${expense.category}'),
            subtitle: Text('Date: ${expense.date.toLocal()}'),
            trailing: Text('ID: ${expense.id}'),
          ),
        );
      },
    );
  }
}
