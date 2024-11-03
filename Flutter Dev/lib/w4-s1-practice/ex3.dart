

import 'package:flutter/material.dart';


enum IconPosition {
  defualt,
  left,
  right;
}
enum ButtonType {
  primary,
  secondary,
  disable,
}
class CustomButton extends StatelessWidget {
  final String title;
  final IconData iconData;
  final IconPosition iconPosition;
  final ButtonType buttonType;

  const CustomButton(
      {required this.title,
      required this.iconData,
      this.iconPosition = IconPosition.defualt,
      this.buttonType = ButtonType.primary});

  List<Widget> get rowChildren {
    List<Widget> children = [
      Text(
        title,
        style: TextStyle(
            fontSize: 16, color: Colors.grey.shade600, fontWeight: FontWeight.normal),
      ),
      Icon(iconData, color: Colors.grey.shade600,),
    ];
    if (iconPosition == IconPosition.left) {
      return children.reversed.toList();
    }
    return children;
  }

  @override
  Widget build(BuildContext context) {
    switch (buttonType) {
      case ButtonType.primary:
        return Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(25),
            ),
            margin: const EdgeInsets.all(10),
            width: 1000,
            height: 50,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: rowChildren,
              ),
            ),
          ),
        );

      case ButtonType.secondary:
        return Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(25),
            ),
            margin: const EdgeInsets.all(10),
            height: 50,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: rowChildren,
              ),
            ),
          ),
        );
      case ButtonType.disable:
        return Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(25),
            ),
            margin: const EdgeInsets.all(10),
            width: 1000,
            height: 50,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: rowChildren,
              ),
            ),
          ),
        );
    }
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('my button'),
      ),
      backgroundColor: Colors.grey.shade100,
      body: const Column(children: [
        CustomButton(
          iconData: Icons.check,
          iconPosition: IconPosition.defualt, //check primary is right
          title: 'Submit', buttonType: ButtonType.primary,
        ),
        CustomButton(
          iconData: Icons.lock_clock,
          iconPosition: IconPosition.left, //check icon on left
          title: 'Submit', buttonType: ButtonType.secondary,
        ),
        CustomButton(
          iconData: Icons.account_tree,
          iconPosition: IconPosition.right, //check right
          title: 'Submit',
          buttonType: ButtonType.disable,
        ),
      ]),
    ),
  ));
}
