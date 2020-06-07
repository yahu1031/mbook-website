import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../custom_cursor.dart';

class Contact extends StatefulWidget
{
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact>
{
  List<Widget> pageChildren(double width) 
  {
    return <Widget>[
      Container(
        height: 570.0,
        width: width,
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Center(
            child: Image.asset(
              "assets/contact.png",
              width: 400.0,
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
                      TextSpan(text:'Contact ', style: GoogleFonts.montserrat(fontSize: 50.0, color: Colors.black, fontWeight: FontWeight.w700)),
                      TextSpan(text:'Us', style: GoogleFonts.montserrat(fontSize: 50.0, color: Color(0xFFFFA800), fontWeight: FontWeight.w700)),
                      TextSpan(text:'.', style: GoogleFonts.montserrat(fontSize: 50.0, color: Colors.black, fontWeight: FontWeight.w700)),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 40.0),
            Container(
              child: Wrap(
                alignment: WrapAlignment.center,
                direction: Axis.horizontal,
                spacing: 10.0,
                runSpacing: 20.0,
                children: <Widget>[
                  CustomCursor(
                    cursorStyle: CustomCursor.pointer,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
//                            side: BorderSide(color: Color(0xFFFFA800))
                      ),
                      elevation: 7.0,
                      onPressed: () {},
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFFFFA800),
//                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child: const Text(
                        'Contact Us',
                        style: TextStyle(fontSize: 20)
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 30.0),
                  CustomCursor(
                    cursorStyle: CustomCursor.pointer,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
//                            side: BorderSide(color: Color(0xFFFFA800))
                      ),
                      elevation: 7.0,
                      onPressed: () {},
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFFFFA800),
//                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child: const Text(
                        'Contact Us',
                        style: TextStyle(fontSize: 20)
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 30.0),
                  CustomCursor(
                    cursorStyle: CustomCursor.pointer,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
//                            side: BorderSide(color: Color(0xFFFFA800))
                      ),
                      elevation: 7.0,
                      onPressed: () {},
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFFFFA800),
//                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child: const Text(
                        'Contact Us',
                        style: TextStyle(fontSize: 20)
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context)
  {
    return LayoutBuilder(
      builder: (context, constraints)
      {
        if (constraints.maxWidth > 900)
        {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 2),
          );
        }
        else
        {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}

