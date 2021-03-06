import 'package:flutter/material.dart';

import 'loggedin.dart';
import 'loggedinnavbar.dart';

void main() => runApp(LoggedInApp());

class LoggedInApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Logged In',
      home: LoggedInPage(),
    );
  }
}

class LoggedInPage extends StatelessWidget {
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
              LoggedInNavBar(),
              Padding(
                padding: const EdgeInsets.fromLTRB(50.0, 50.0, 50.0, 0.0),
                child: LoggedIn(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
