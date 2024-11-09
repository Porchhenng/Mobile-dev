import 'package:flutter/material.dart';

class Button {
  final String title;
  

  Button({required this.title});
}

class ButtonState extends StatefulWidget {
  const ButtonState({super.key});

  @override
  State<ButtonState> createState() {
    return ManageButtonState();
  }
}
class ManageButtonState extends State<ButtonState> {
  late final Button button;
  bool isSelected = false;

  @override
  Widget build(Object context) {
    // TODO: implement build
    return Container(
      child: Center(
        child: Container(
          child: SizedBox(
            width: 400,
            height: 50,
            child: ElevatedButton(
                onPressed: () => {
                      setState(() {
                        isSelected = !isSelected; // Toggle the selected state
                      })
                    },
                style: ButtonStyle( backgroundColor: WidgetStateProperty.all(isSelected ? Colors.blue.shade600 : Colors.blue.shade100) ),
                child:  Center(
                  child: Text( isSelected ? 'selected' : 'not selected',
                  style: const TextStyle( fontSize: 20),
                  )
                )),
          ),
        ),
      ),
    );
  }
}

void main() {

  runApp( MaterialApp(
    home: Scaffold(
      appBar: AppBar(
      title: const Text("Custom buttons"),),
      body: Container(
        color: Colors.white,
        child: const  Center(
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonState(),
              SizedBox(height: 20),
              ButtonState(),
              SizedBox(height: 20),
              ButtonState(),
            ],
          ),
        ),
      ),
    ),
  ));
}
