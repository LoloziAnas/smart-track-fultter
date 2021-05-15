import 'package:flutter/material.dart';
import 'package:smart_track_app/widgets/app_drawer.dart';

class HistoryPage extends StatelessWidget {
  static const String routeName = '/history';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History'),
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Text('History'),
      ),
    );
  }
}
