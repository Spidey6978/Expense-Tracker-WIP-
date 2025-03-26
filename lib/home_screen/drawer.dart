import 'package:flutter/material.dart';
import 'package:fosshack_practice/main.dart';
import 'package:fosshack_practice/about_page/desc.dart';
import 'package:fosshack_practice/contacts_page/contacts_page.dart';
class OptionsDrawer extends StatelessWidget {
  const OptionsDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8, 
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 038, 037, 037),
              ),
              child: Text(
                '%user name%',
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text('Contacts'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ContactsPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}