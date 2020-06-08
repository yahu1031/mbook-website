import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Services/auth_services.dart';
import '../constants.dart';
import '../custom_cursor.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = new GlobalKey<FormState>();

  checkFields() {
    final form = formKey.currentState;
    if (form.validate()) {
      return true;
    } else {
      return false;
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
                              onPressed: () {
                                if (checkFields()) {
                                  AuthService().signIn(email, password);
                                }
                              },
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
//                child: Form(
//                    key: formKey,
//                    child: Column(
//                      mainAxisAlignment: MainAxisAlignment.center,
//                      children: <Widget>[
//                        Padding(
//                            padding: EdgeInsets.only(
//                                left: 25.0,
//                                right: 25.0,
//                                top: 20.0,
//                                bottom: 5.0),
//                            child: Container(
//                              height: 50.0,
//                              child: TextFormField(
//                                decoration: InputDecoration(
//                                  labelText: 'Register Number',
//                                  labelStyle: GoogleFonts.notoSans(
//                                    fontWeight: FontWeight.w500,
//                                    color: Colors.lightBlueAccent,
//                                  ),
//                                  focusedBorder: OutlineInputBorder(
//                                    borderSide: BorderSide(
//                                        color: Colors.lightBlueAccent,
//                                        width: 2.0),
//                                    borderRadius: BorderRadius.circular(15.0),
//                                  ),
//                                  errorBorder: OutlineInputBorder(
//                                    borderSide: BorderSide(
//                                        color: Colors.red, width: 3.0),
//                                  ),
//                                ),
//                                validator: (value) => value.isEmpty
//                                    ? 'Register number is required'
//                                    : null,
//                                onChanged: (value) {
//                                  this.email = value;
//                                },
//                              ),
//                            )),
//                        Padding(
//                            padding: EdgeInsets.only(
//                                left: 25.0,
//                                right: 25.0,
//                                top: 20.0,
//                                bottom: 5.0),
//                            child: Container(
//                              height: 50.0,
//                              child: TextFormField(
//                                obscureText: true,
//                                decoration: InputDecoration(
//                                  labelText: 'Password',
//                                  labelStyle: GoogleFonts.notoSans(
//                                    fontWeight: FontWeight.w500,
//                                    color: Colors.lightBlueAccent,
//                                  ),
//                                  focusedBorder: OutlineInputBorder(
//                                    borderSide: BorderSide(
//                                        color: Colors.lightBlueAccent,
//                                        width: 2.0),
//                                    borderRadius: BorderRadius.circular(15.0),
//                                  ),
//                                  errorBorder: OutlineInputBorder(
//                                    borderSide: BorderSide(
//                                        color: Colors.red, width: 3.0),
//                                  ),
//                                ),
//                                validator: (value) => value.isEmpty
//                                    ? 'Password is required'
//                                    : null,
//                                onChanged: (value) {
//                                  this.password = value;
//                                },
//                              ),
//                            )),
//                        InkWell(
//                            onTap: () {
//                              if (checkFields()) {
//                                AuthService().signIn(email, password);
//                              }
//                            },
//                            child: Container(
//                                height: 40.0,
//                                width: 100.0,
//                                decoration: BoxDecoration(
//                                  color: Colors.green.withOpacity(0.2),
//                                ),
//                                child: Center(child: Text('Sign in'))))
//                      ],
//                    )),
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
