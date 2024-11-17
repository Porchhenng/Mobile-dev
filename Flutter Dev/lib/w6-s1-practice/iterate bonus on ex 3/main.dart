import 'package:flutter/material.dart';
import 'package:w3_s3_practice/w6-s1-practice/iterate%20bonus%20on%20ex%203/screen/temperature.dart';
import 'package:w3_s3_practice/w6-s1-practice/iterate%20bonus%20on%20ex%203/screen/welcome.dart';


class TemperatureApp extends StatefulWidget {
  const TemperatureApp({super.key});

  @override
  State<TemperatureApp> createState() {
    return _TemperatureAppState();
  }
}

class _TemperatureAppState extends State<TemperatureApp> {
 bool showWelcome = true;
  
  @override
  Widget build(context) {

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff16C062),
                Color(0xff00BCDC),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: showWelcome ? Welcome(onPressed: () {
            setState(() {
              showWelcome = false;
            });
          }) : const Temperature(),
        ),
      ),
    );
  }
}

void main() {
  runApp(const TemperatureApp());
}
