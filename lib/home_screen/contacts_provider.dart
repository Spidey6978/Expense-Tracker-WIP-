import 'package:flutter/material.dart';

class Contacts {
  final String name;
  final double amount;
  final String type;

  Contacts({required this.name, required this.amount, required this.type});
}

class ContactProvider extends ChangeNotifier {
  final List<Contacts> _contacts = [];

  List<Contacts> get contacts => _contacts;

  void addContact(String name, double amount, String type) {
    _contacts.add(Contacts(name: name, amount: amount, type: type));
    notifyListeners(); 
  }
}
