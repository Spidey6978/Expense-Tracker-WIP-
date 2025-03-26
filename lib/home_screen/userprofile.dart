import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            "Hello, %user name%",
            style: TextStyle(fontSize: 24, color: const Color.fromARGB(255, 255, 255, 255)),
          ),
        ],
      ),
    );
  }
}