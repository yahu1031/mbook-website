import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webpage/Login/loginmain.dart';
import 'package:google_fonts/google_fonts.dart';

import '../About/aboutmain.dart';
import '../Contact/contactmain.dart';
import '../constants.dart';
import '../custom_cursor.dart';
import '../main.dart';

// ignore: camel_case_types
class downloadNavbar extends StatefulWidget {
  @override
  _downloadNavbarState createState() => _downloadNavbarState();
}

// ignore: camel_case_types
class _downloadNavbarState extends State<downloadNavbar> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 900) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                );
              },
              child: CustomCursor(
                cursorStyle: CustomCursor.pointer,
                child: Image.asset(
                  Images.kLogo,
                  width: 150.0,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyApp()),
                      );
                    },
                    child: CustomCursor(
                      cursorStyle: CustomCursor.pointer,
                      child: Text(
                        "Home",
                        style: GoogleFonts.montserrat(
                          fontSize: 20.0,
                          fontStyle: FontStyle.normal,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AboutApp(),
                        ),
                      );
                    },
                    child: CustomCursor(
                      cursorStyle: CustomCursor.pointer,
                      child: Text(
                        "About Us",
                        style: GoogleFonts.montserrat(
                          fontSize: 20.0,
                          fontStyle: FontStyle.normal,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                CustomCursor(
                  cursorStyle: CustomCursor.pointer,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ContactApp()),
                      );
                    },
                    child: Text(
                      "Contact",
                      style: GoogleFonts.montserrat(
                        fontSize: 20.0,
                        fontStyle: FontStyle.normal,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Download",
                  style: GoogleFonts.montserrat(
                    fontSize: 25.0,
                    fontStyle: FontStyle.normal,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                SizedBox(
                  width: 30,
                ),
                CustomCursor(
                  cursorStyle: CustomCursor.pointer,
                  child: MaterialButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginApp()),
                      );
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.lightBlueAccent),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Container(
        child: Column(children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            },
            child: CustomCursor(
              cursorStyle: CustomCursor.pointer,
              child: Image.asset(
                Images.kLogo,
                width: 50.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Home",
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
                SizedBox(
                  width: 30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AboutApp(),
                        ));
                  },
                  child: CustomCursor(
                    cursorStyle: CustomCursor.pointer,
                    child: Text(
                      "About Us",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
