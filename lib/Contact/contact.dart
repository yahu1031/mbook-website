import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';
import '../custom_cursor.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        height: 700.0,
        width: width,
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Center(
            child: Image.asset(
              Images.kMailus,
              height: 700.0,
              width: width,
            ),
          ),
        ),
      ),
      Container(
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Contact ',
                        style: GoogleFonts.montserrat(
                            fontSize: 50.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                      TextSpan(
                        text: 'Us',
                        style: GoogleFonts.montserrat(
                            fontSize: 50.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                      TextSpan(
                        text: '.',
                        style: GoogleFonts.montserrat(
                            fontSize: 50.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 40.0),
            CustomCursor(
              cursorStyle: CustomCursor.pointer,
              child: RaisedButton(
                elevation: 7.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25.0),
                  ),
                ),
                onPressed: () {
                  print('Contact us');
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 40.0),
                  child: Text(
                    "Contact Us",
                    style: TextStyle(color: Colors.lightBlueAccent),
                  ),
                ),
              ),
            ),
          ],
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
            children: pageChildren(constraints.biggest.width / 2),
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
