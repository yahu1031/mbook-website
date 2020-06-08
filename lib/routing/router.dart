import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_webpage/About/aboutmain.dart';
import 'package:flutter_webpage/Contact/contactmain.dart';
import 'package:flutter_webpage/Download/downloadmain.dart';
import 'package:flutter_webpage/main.dart';
import 'package:flutter_webpage/routing/route_names.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(MyApp(), settings);
    case AboutRoute:
      return _getPageRoute(AboutPage(), settings);
    case ContactRoute:
      return _getPageRoute(ContactPage(), settings);
    case DownloadRoute:
      return _getPageRoute(DownloadPage(), settings);
    default:
      return _getPageRoute(MyApp(), settings);
  }
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(child: child, routeName: settings.name);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _FadeRoute({this.child, this.routeName})
      : super(
          settings: RouteSettings(name: routeName),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
