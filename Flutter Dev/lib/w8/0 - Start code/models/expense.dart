import 'package:uuid/uuid.dart';

import 'package:uuid/uuid.dart';

enum ExpenseType { food, travel, lesure, work }

const Uuid uuid = Uuid();

class Expense {
  final String id;
  final String title;
  final double price;
  final DateTime date;
  final ExpenseType category;
  

  Expense({required this.title, required this.price, required this.date, required this.category}): 
  this.id = uuid.v4();
}


void main(){
  
  
}