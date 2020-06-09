import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webpage/User/Signup/signup.dart';
import 'package:flutter_webpage/User/Signup/signupnavbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'M Books',
      home: SignupPage(),
    );
  }
}

class SignupPage extends StatelessWidget {
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
              SignupNavbar(),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: SignUp(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
