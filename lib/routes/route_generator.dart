import 'package:flutter/material.dart';
import 'package:smart_track_app/login/login.dart';
import 'package:smart_track_app/pages/command_page.dart';
import 'package:smart_track_app/pages/dashboard_page.dart';
import 'package:smart_track_app/pages/history_page.dart';
import 'package:smart_track_app/pages/position_page.dart';
import 'package:smart_track_app/routes/routes.dart';
class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    /*final args = settings.arguments;*/
    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (context) => Login());
      case Routes.dashboard:
        return MaterialPageRoute(builder: (context)=> DashboardPage());
      case Routes.position:
        return MaterialPageRoute(builder: (context)=> PositionPage());
      case Routes.history:
        return MaterialPageRoute(builder: (context)=> HistoryPage());
      case Routes.command:
        return MaterialPageRoute(builder: (context)=> CommandPage());

      default:
        return _errorRoute();
    }
  }
  static Route<dynamic> _errorRoute(){
    return MaterialPageRoute(builder: (_){
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('Error'),
        ),
      );
    });
  }

}

