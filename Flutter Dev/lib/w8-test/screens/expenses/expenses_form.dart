

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExpenseForm extends StatefulWidget {
  const ExpenseForm({super.key});

  @override
  State<ExpenseForm> createState() => _ExpenseFormState();
}

class _ExpenseFormState extends State<ExpenseForm> {

  String value = '';
  double amount = 0; 

  void onTextPressed(String newValue) {
    setState(() {
      value = newValue;
    });
  }
  void onDoublePressed(String newAmount) {
    setState(() {
      
      amount = double.parse(newAmount) ?? 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          TextField(
            onChanged: onTextPressed,
            maxLength: 50,
            decoration: const InputDecoration(
              label: Text('Title'),
            ),
          ),
          Text("Value is $value"),

          TextField(
            onChanged: onDoublePressed,
            inputFormatters:  <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
            maxLength: 50,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              label: Text('Amount'),
            ),
          ),
          Text("Value is $amount"),
        ],
      ),
    );
  }
}
