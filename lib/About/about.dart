import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_webpage/constants.dart';
import 'package:google_fonts/google_fonts.dart';

import '../custom_cursor.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        height: 570.0,
        width: width,
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Center(
            child: Image.asset(
              Images.kTeam,
              width: width,
              height: 600.0,
            ),
          ),
        ),
      ),
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Center(
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'About ',
                          style: GoogleFonts.montserrat(
                              fontSize: 50.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w700)),
                      TextSpan(
                          text: 'Us',
                          style: GoogleFonts.montserrat(
                              fontSize: 50.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w700)),
                      TextSpan(
                          text: '.',
                          style: GoogleFonts.montserrat(
                              fontSize: 50.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w700)),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              child: Center(
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  direction: Axis.horizontal,
                  spacing: 100.0,
                  runSpacing: 50.0,
                  children: <Widget>[
                    _buildListItem('Minnu', Images.kMinnu, 'Intermediate',
                        'App & Website'),
                    _buildListItem(
                        'Ton An', Images.kTon, 'Intermediate', 'App'),
                    _buildListItem('Ishu', Images.kIshu, 'Intermediate', 'App'),
                    _buildListItem('Shankar Narayan', Images.kShankar,
                        'Intermediate', 'App'),
                  ],
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
          return Padding(
            padding: const EdgeInsets.only(top: 60.0, bottom: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: pageChildren(constraints.biggest.width / 2),
            ),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }

  _buildListItem(String name, String itemPath, String about, String workDone) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: CustomCursor(
            cursorStyle: CustomCursor.pointer,
            child: Container(
              height: 300.0,
              width: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: CircleAvatar(
                        radius: 75.0,
                        backgroundImage: AssetImage(
                          itemPath,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25.0),
                  Text(
                    name,
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w500,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Text(about),
                  SizedBox(height: 15.0),
                  Text(
                    workDone,
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w500,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
