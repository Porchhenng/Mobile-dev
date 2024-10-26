import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    home:  Scaffold( 
      backgroundColor: Color.fromARGB(255, 163, 102, 174),
      body: Center(
        child: Text('Hello my name is chheng', style: TextStyle(color: Colors.orange),),
        
      ),
    ),
  ));
}
