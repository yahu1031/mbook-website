import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';
import '../custom_cursor.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        child: Wrap(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(top: 100.0),
              width: width,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: kHelloText,
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w800,
                              fontSize: 80.0,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: ' .',
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w800,
                              fontSize: 80.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40.0),
                      child: Text(
                        kContent,
                        style: GoogleFonts.openSans(
                          height: 1.5,
                          fontSize: 16.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    CustomCursor(
                      cursorStyle: CustomCursor.pointer,
                      child: MaterialButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(25.0),
                          ),
                        ),
                        onPressed: () {
                          print('packages');
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 40.0),
                          child: Text(
                            "Read About Us",
                            style: TextStyle(color: Colors.lightBlueAccent),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Container(
                height: 600.0,
                child: Image.asset(
                  Images.kImage,
                  width: width,
                  height: 600.0,
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
