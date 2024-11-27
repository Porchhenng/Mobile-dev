import 'package:flutter/material.dart';

List<String> colors = ["red", "blue", "green"];

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children:  [
            Label("Method 1: Loop in Array", bold: true),
            for(int i = 0; i < colors.length; i++) Text(colors[i]),
            // TODO
            Label("Method 2: Map", bold: true),
            ...colors.map((item) => Text(item)),
            
            // TODO
            Label("Method 23: Dedicated Function", bold: true),
            ...getList(),
            // TODO
          ],
        ),
      ),
    ),
  ));
}
Iterable<Widget> getList(){
  return colors.map((item) => Text(item));
}

class Label extends StatelessWidget {
  const Label(this.text, {super.key, this.bold = false});

  final bool bold;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontWeight: (bold ? FontWeight.bold : FontWeight.normal)),
    );
  }
}
