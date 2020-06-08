import 'package:flutter/material.dart';

import 'contact.dart';
import 'contactnavbar.dart';

void main() => runApp(ContactApp());

class ContactApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact Us',
      home: ContactPage(),
    );
  }
}

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xff4facfe),
                Color(0xff38f9d7),
              ],
            ),
          ),
          child: Column(
            children: <Widget>[
              ContactNavbar(),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Contact(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
