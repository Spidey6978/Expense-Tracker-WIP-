import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fosshack_practice/home_screen/contacts_provider.dart';
import 'package:fosshack_practice/home_screen/add_contacts_hs.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: Consumer<ContactProvider>(
        builder: (context, contactProvider, child) {
          return ListView.builder(
            itemCount: contactProvider.contacts.length,
            itemBuilder: (context, index) {
              final contact = contactProvider.contacts[index];
              return ListTile(
                title: Text(contact.name),
                subtitle: Text('${contact.amount} (${contact.type})'),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AddContactsHS(),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}