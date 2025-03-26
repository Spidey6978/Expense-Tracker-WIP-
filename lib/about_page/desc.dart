import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("App Info")),
      body: Padding(padding: const EdgeInsets.all(16.0), child: Table(
          border: TableBorder.all(), // Adds border to the table
          columnWidths: const {
            0: FlexColumnWidth(2), // First column is wider
            1: FlexColumnWidth(3), // Second column
          },
          children: const [
            TableRow(children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("App Name", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Expense Tracker"),
              ),
            ]),
            TableRow(children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Version", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("1.0.0"),
              ),
            ]),
            TableRow(children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Developer", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Your Name"),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}  
     