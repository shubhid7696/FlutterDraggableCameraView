import 'package:flutter/material.dart';
import 'package:m_class/app_screens/main_screen.dart';
import 'package:m_class/app_screens/video_scr.dart';

class AppRoutes {

  static const String errorRoute                  = "/errorScr";
  static const String splashRoute                 = "/splash";
  static const String videoScreen                 = "/videoScr";
  static const String mainScreen                  = "/mainScr";

  static Route<dynamic> generateRoute(RouteSettings settings) {

    //AppArguments appArgs = settings.arguments;

    switch (settings.name) {
      case videoScreen :
        return MaterialPageRoute(builder: (_) => VideoScreen());
      case mainScreen:
        return MaterialPageRoute(builder: (_) => MainScreen());
    /*
      default:
        return MaterialPageRoute(builder: (_) => RoutingErrorScreen());*/
    }
  }
}
