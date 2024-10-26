import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    home: Column(
      children:[
      Button("OOP", startColor: Colors.blue.shade100,endColor: Colors.blue.shade100),
      Button("DART", startColor: Colors.blue.shade300,endColor: Colors.blue.shade300),
      Button("FLUTTER", startColor: Colors.blue.shade300,endColor: Colors.red.shade300),
       ], )));
}

class Button extends StatelessWidget {
  final String label;
  final Color startColor;
  final Color endColor;

  const Button(this.label,{ required this.startColor, required this.endColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
    height: 50,
    width: 500,
    alignment: Alignment.center,
    padding: const EdgeInsets.all(8),
    margin: const EdgeInsets.symmetric(vertical: 8), 
    decoration: BoxDecoration( 
      color: Colors.blue,
      borderRadius: BorderRadius.circular(20),
      gradient: LinearGradient(colors:[startColor, endColor])
    ),
     child: Text(label, 
      style: TextStyle(
        fontSize: 24,
          color: Colors.white, 
          decoration: TextDecoration.none)));
  }
}
