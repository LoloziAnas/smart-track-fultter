import 'package:flutter/material.dart';
import 'package:smart_track_app/widgets/app_drawer.dart';

class PositionPage extends StatelessWidget {
  static const String routeName = '/position';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Position'),
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Text('Position'),
      ),
    );
  }
}
