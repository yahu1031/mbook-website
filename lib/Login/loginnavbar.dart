import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webpage/About/aboutmain.dart';
import 'package:flutter_webpage/Download/downloadmain.dart';
import 'package:flutter_webpage/constants.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Contact/contactmain.dart';
import '../custom_cursor.dart';
import '../main.dart';

class LoginNavbar extends StatefulWidget {
  @override
  _LoginNavbarState createState() => _LoginNavbarState();
}

class _LoginNavbarState extends State<LoginNavbar> {
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
                        MaterialPageRoute(builder: (context) => AboutApp()),
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
                CustomCursor(
                  cursorStyle: CustomCursor.pointer,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DownloadApp()),
                      );
                    },
                    child: Text(
                      "Download",
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
                  "Login",
                  style: GoogleFonts.montserrat(
                    fontSize: 25.0,
                    fontStyle: FontStyle.normal,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 30,
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
              child: Image.asset(
                Images.kLogo,
                width: 150.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                    child: Text(
                      "Home",
                      style: TextStyle(color: Colors.white),
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
                        MaterialPageRoute(builder: (context) => AboutApp()),
                      );
                    },
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
