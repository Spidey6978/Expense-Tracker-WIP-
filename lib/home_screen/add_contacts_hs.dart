import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'contacts_provider.dart';

class AddContactsHS extends StatefulWidget {
  const AddContactsHS({super.key});

  @override
  State<AddContactsHS> createState() => _AddContactsHSState();
}

class _AddContactsHSState extends State<AddContactsHS> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Add Contact",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _nameController, 
            decoration: const InputDecoration(labelText: "Name"),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: _amountController, 
            inputFormatters: [
              FilteringTextInputFormatter.deny(
                RegExp(r'[!@#$%^&*(),.?":{}|<> a-zA-Z]'),
              ),
            ],
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: "Amount"),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Cancel"),
              ),
              const SizedBox(width: 3),
              ElevatedButton(
                onPressed: () {
                  if (_nameController.text.isNotEmpty &&
                      _amountController.text.isNotEmpty) {
                    Provider.of<ContactProvider>(context, listen: false).addContact(_nameController.text, 
                    double.parse(_amountController.text), 'toPay');
                    Navigator.pop(context);    
                  }
                },
                child: const Text("To Pay"),
              ),
              const SizedBox(width: 5),
              ElevatedButton(
                onPressed: () {
                  if (_nameController.text.isNotEmpty &&
                      _amountController.text.isNotEmpty) {
                   Provider.of<ContactProvider>(context, listen: false).addContact(_nameController.text,
                   double.parse(_amountController.text), 'toReceive');
                   Navigator.pop(context);
                  }
                },
                child: const Text("To Receive"),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _amountController.dispose();
    super.dispose();
  }
}