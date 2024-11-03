import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(50.0),
            margin: const EdgeInsets.all(40.0),
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: const Center(
              child: Text(
                'CADT STUDENTS',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
