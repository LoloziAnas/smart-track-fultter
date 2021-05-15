import 'package:flutter/material.dart';
import 'package:smart_track_app/login/login.dart';
import 'package:smart_track_app/pages/command_page.dart';
import 'package:smart_track_app/pages/dashboard_page.dart';
import 'package:smart_track_app/pages/history_page.dart';
import 'package:smart_track_app/pages/position_page.dart';
import 'package:smart_track_app/routes/route_generator.dart';
import 'package:smart_track_app/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Track',
      theme: ThemeData(
        primarySwatch: Colors.orange,

      ),
      /*initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,*/

      routes: {
        '/': (context)=> Login(),
        Routes.dashboard: (context) => DashboardPage(),
        Routes.position: (context) => PositionPage(),
        Routes.command: (context) => CommandPage(),
        Routes.history: (context) => HistoryPage(),
      },
    );
  }
}

