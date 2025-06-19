import 'package:flutter/material.dart';
import 'drawer.dart'; 
import 'add_contacts_hs.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 40, 40, 40),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 87, 247, 255),
        title: const Text("WIP",style: TextStyle(fontSize: 14),),
      ),
      drawer: const OptionsDrawer(), 
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Hello, User!", 
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(height: 16), 
            
            const Spacer(), 
            
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AddContactsHS()));
                },
                child: const Icon(Icons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
