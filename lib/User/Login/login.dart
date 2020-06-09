import 'package:flutter/material.dart';
import 'package:flutter_webpage/Services/auth_services.dart';
import 'package:flutter_webpage/Services/user.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Services/auth_services.dart';
import '../../constants.dart';
import '../../custom_cursor.dart';
import 'LoggedIn/loggedinmain.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = new GlobalKey<FormState>();
  final AuthServices _auth = AuthServices();

  checkFields() {
    final form = formKey.currentState;
    if (form.validate()) {
      return true;
    } else {
      return false;
    }
  }

  void logIn() async {
    if (checkFields()) {
      if (formKey.currentState.validate()) {
//                                    showLoadingDialog(context);
        print("loading");
        final User user = await _auth.signInWithEmailAndPassword(
          email,
          password,
        );
        Navigator.pop(context);
        if (email == null && password == null) {
//                                      Dialogs.yesAbortDialog(context, kSorryString,
//                                          "Please fill the credentials. Credentials must not be empty.");
          print("fill form");
        } else if (email == null) {
//                                      Dialogs.yesAbortDialog(context, 'Register Number',
//                                          "You are missing your Register number. please enter it.");
          print("no reg");
        } else if (email.length < 9) {
//                                      Dialogs.yesAbortDialog(context, 'Register Number',
//                                          'Your register number must be 9 characters.');
          print("reg more than 9");
        } else if (password == null) {
//                                      Dialogs.yesAbortDialog(context, 'Password',
//                                          "You are missing your password. please enter it.");
          print("no password");
        } else if (password.length < 6) {
//                                      Dialogs.yesAbortDialog(context, 'Password',
//                                          'Your password must be more than 6 chasracters.');
          print("password more than 6");
        } else if (user == null) {
//                                      Dialogs.yesAbortDialog(context, kSorryString,
//                                          "Your credentials did not match. Please try with Correct credentials.");
          print("not match");
        } else {
//                                      Navigator.pushReplacementNamed(
//                                          context, LoadingScreen.id,
//                                          arguments: user);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LoggedInApp(),
            ),
          );
        }
      }
    }
  }

  String email, password;

  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
        ),
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Login ',
                          style: GoogleFonts.montserrat(
                              fontSize: 70.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w700)),
                      TextSpan(
                          text: '.',
                          style: GoogleFonts.montserrat(
                              fontSize: 100.0,
                              color: Colors.lightBlueAccent,
                              fontWeight: FontWeight.w700)),
                    ],
                  ),
                ),
              ),
              Center(
                child: Form(
                  key: formKey,
                  child: Container(
                    width: 300.0,
                    child: Padding(
                      padding:
                          const EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(height: 50.0),
                          CustomCursor(
                            cursorStyle: CustomCursor.text,
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Register Number',
                                labelStyle: GoogleFonts.notoSans(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.lightBlueAccent,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.lightBlueAccent,
                                      width: 2.0),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.red, width: 3.0),
                                ),
                              ),
                              validator: (value) => value.isEmpty
                                  ? 'Register number is required'
                                  : null,
                              onChanged: (value) {
                                this.email = value;
                              },
                            ),
                          ),
                          SizedBox(height: 30.0),
                          CustomCursor(
                            cursorStyle: CustomCursor.text,
                            child: TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle: GoogleFonts.notoSans(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.lightBlueAccent,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.lightBlueAccent,
                                      width: 2.0),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.red, width: 3.0),
                                ),
                              ),
                              validator: (value) =>
                                  value.isEmpty ? 'Password is required' : null,
                              onChanged: (value) {
                                this.password = value;
                              },
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          CustomCursor(
                            cursorStyle: CustomCursor.pointer,
                            child: RaisedButton(
                              color: Colors.lightBlueAccent,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25.0))),
                              onPressed: logIn,
                              child: Text(
                                "Login",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,
        ),
        child: Container(
          height: 850.0,
          child: Image.asset(
            Images.kLogin,
            width: width,
            height: 850.0,
          ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 900) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: pageChildren(constraints.biggest.width / 3),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}

String validateEmail(String value) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  if (!regex.hasMatch(value))
    return 'Enter Valid Register number';
  else
    return null;
}
