import 'package:flutter/material.dart';
import 'package:smart_track_app/widgets/app_drawer.dart';

class PositionPage extends StatelessWidget {
  static const String routeName = '/command';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Command'),
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Text('Command'),
      ),
    );
  }
}
