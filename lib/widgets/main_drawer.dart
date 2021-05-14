
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(
                  gradient:
                  LinearGradient(colors: [Colors.orange, Colors.white])),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UserAccountsDrawerHeader(
                      accountName: Text('Jack Ma'),
                      accountEmail: Text('jack.ma@ebay.com')),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage:
                    AssetImage("asset/images/flutter-logo.png"),
                  ),
                ],
              )),
          ListTile(
            leading: Icon(Icons.home, color: Colors.deepOrange),
            title: Text(
              'Home',
              style: TextStyle(color: Colors.deepOrange, fontSize: 18.0),
            ),
            onTap: () => print('Home Fragment '),
          ),
          ListTile(
            leading: Icon(Icons.contacts, color: Colors.deepOrange),
            title: Text(
              'Home',
              style: TextStyle(color: Colors.deepOrange, fontSize: 18.0),
            ),
            onTap: () => print('Contact Fragment '),
          )
        ],
      ),
    );
  }
}
