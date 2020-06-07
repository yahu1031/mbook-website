import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../About/aboutmain.dart';
import '../custom_cursor.dart';
import '../main.dart';

class ContactNavbar extends StatefulWidget {
  @override
  _ContactNavbarState createState() => _ContactNavbarState();
}

class _ContactNavbarState extends State<ContactNavbar> {
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
                  "assets/logo_img.png",
                  width: 100.0,
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
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Contact",
                  style: GoogleFonts.montserrat(
                    fontSize: 25.0,
                    fontStyle: FontStyle.normal,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                CustomCursor(
                  cursorStyle: CustomCursor.pointer,
                  child: Text(
                    "Login",
                    style: GoogleFonts.montserrat(
                      fontSize: 20.0,
                      fontStyle: FontStyle.normal,
                      color: Colors.white,
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
              child: Image.asset(
                "assets/logo_img.png",
                width: 50.0,
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
