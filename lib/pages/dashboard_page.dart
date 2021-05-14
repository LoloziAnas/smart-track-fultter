import 'package:flutter/material.dart';
import 'package:smart_track_app/widgets/app_drawer.dart';

class DashboardPage extends StatelessWidget {
  static const String routeName = '/dashboard';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Text('Dashboard'),
      ),
    );
  }
}
