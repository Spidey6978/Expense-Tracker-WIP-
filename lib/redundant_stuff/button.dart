//will be modified and used in the main.dart file later
import 'package:flutter/material.dart';

class MyButton extends StatefulWidget{
  const MyButton ({super.key});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('$count'),
          ElevatedButton(
            onPressed: () {
              setState(() {
                count++;
              });
            },
            child: Text("click me"),
          ),
        ],
      ),
    );
  }
}