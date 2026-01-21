import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'home_screen/home_page.dart';
import 'home_screen/contacts_provider.dart';
import 'home_screen/contact.dart';

void main() async {
  // Initialize Hive
  await Hive.initFlutter();
  Hive.registerAdapter(ContactAdapter());

  runApp(
    ChangeNotifierProvider(
      create: (context) => ContactProvider(),
      child: const MyApp(),
    ),
  );
}

class MyAppState extends ChangeNotifier {}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    // Initialize Hive after provider is created
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ContactProvider>().initHive();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Tracker',
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      home: const HomePage(),
    );
  }
}
