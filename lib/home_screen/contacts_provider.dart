import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'contact.dart';

class ContactProvider extends ChangeNotifier {
  static const String contactsBoxName = 'contacts';
  late Box<Contact> _contactsBox;

  List<Contact> get contacts => _contactsBox.values.toList();

  // Initialize Hive and open the box
  Future<void> initHive() async {
    _contactsBox = await Hive.openBox<Contact>(contactsBoxName);
    notifyListeners();
  }

  // Add a new contact
  Future<void> addContact(String name, double amount, String type) async {
    final contact = Contact(
      name: name,
      amount: amount,
      type: type,
    );
    await _contactsBox.add(contact);
    notifyListeners();
  }

  // Delete a contact by index
  Future<void> deleteContact(int index) async {
    await _contactsBox.deleteAt(index);
    notifyListeners();
  }

  // Update a contact
  Future<void> updateContact(
    int index,
    String name,
    double amount,
    String type,
  ) async {
    final contact = Contact(
      name: name,
      amount: amount,
      type: type,
    );
    await _contactsBox.putAt(index, contact);
    notifyListeners();
  }

  // Clear all contacts (optional)
  Future<void> clearAll() async {
    await _contactsBox.clear();
    notifyListeners();
  }
}
