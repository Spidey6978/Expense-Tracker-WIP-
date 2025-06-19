import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home_screen/home_page.dart'; 
import 'home_screen/contacts_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) =>  ContactProvider(),
      child: const MyApp(),
    ),
  );
}

class MyAppState extends ChangeNotifier {
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
