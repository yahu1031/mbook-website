import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';
import '../custom_cursor.dart';

class Download extends StatefulWidget {
  @override
  _DownloadState createState() => _DownloadState();
}

class _DownloadState extends State<Download> {
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
                            text: kDownloadText,
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
                      child: RaisedButton(
                        elevation: 7.0,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(25.0),
                          ),
                        ),
                        onPressed: () {
                          print('Download button clicked');
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 10.0),
                          child: Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Image.asset(
                                Images.kDownloadIcon,
                                height: 20.0,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "Download",
                                style: TextStyle(color: Colors.lightBlueAccent),
                              ),
                            ],
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
                height: 750.0,
                child: Hero(
                  tag: 'mobile',
                  child: Image.asset(
                    Images.kDownload,
                    width: width,
                    height: 750.0,
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
