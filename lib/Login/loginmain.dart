import 'package:flutter/material.dart';
import 'login.dart';
import 'loginnavbar.dart';
import 'package:firebase/firebase.dart' as fb;

void main()
{
  assert((){
    fb.initializeApp(
        apiKey: "AIzaSyAQPULQs491mGz7xP9K1n6BnX5_wvQcbK4",
        authDomain: "flutter-web-1031.firebaseapp.com",
        databaseURL: "https://flutter-web-1031.firebaseio.com",
        projectId: "flutter-web-1031",
        storageBucket: "flutter-web-1031.appspot.com",
        messagingSenderId: "14402995330",
        appId: "1:14402995330:web:1e65ee8d018c8e8827609b",
        measurementId: "G-50Y8SV7PES"
    );
  }());

  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Montserrat",
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 905.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              LoginNavbar(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: Login(),
              )
            ],
          ),
        ),
      ),
    );
  }
}