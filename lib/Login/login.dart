import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  String _email;
  String _password;

  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 50.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
        ),
        alignment: Alignment.center,
        width: width,
        child: Center(
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
                        color: Colors.white,
                        fontWeight: FontWeight.w700)),
              ],
            ),
          ),
        ),
      ),
      Container(
        height: 570.0,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Image.asset(
              Images.kLogin,
              width: 400.0,
            ),
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
            mainAxisAlignment: MainAxisAlignment.center,
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

//  void _validateInputs() {
//    if (_formKey.currentState.validate())
//    {
//      //    If all data are correct then save data to out variables
//      _formKey.currentState.save();
//      print('Logged in');
//      print('email : $_email');
//      print('password : $_password');
//    }
//    else
//    {
//      //    If all data are not valid then start auto validation.
//      print('Failed to Login');
//      setState(()
//      {
//        _autoValidate = true;
//      });
//    }
//  }
}

String validateEmail(String value) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  if (!regex.hasMatch(value))
    return 'Enter Valid Email';
  else
    return null;
}
