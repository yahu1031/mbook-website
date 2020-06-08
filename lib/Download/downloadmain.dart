import 'package:flutter/material.dart';
import 'package:flutter_webpage/Download/download.dart';

import 'downloadnavbar.dart';

void main() => runApp(DownloadApp());

class DownloadApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Download',
      home: DownloadPage(),
    );
  }
}

class DownloadPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xff4facfe),
                Color(0xff38f9d7),
              ],
            ),
          ),
          child: Column(
            children: <Widget>[
              downloadNavbar(),
              Padding(
                padding: const EdgeInsets.fromLTRB(50.0, 50.0, 50.0, 0.0),
                child: Download(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
