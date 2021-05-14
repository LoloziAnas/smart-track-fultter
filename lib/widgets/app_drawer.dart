import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader(),
          _createDrawerItem(icon: Icons.home, text: 'Contacts'),
          _createDrawerItem(icon: Icons.card_travel, text: 'Position'),
          _createDrawerItem(icon: Icons.history, text: 'History'),
          _createDrawerItem(icon: Icons.cake_sharp, text: 'Commands'),
          _createDrawerItem(icon: Icons.now_wallpaper, text: 'Authors'),
          _createDrawerItem(icon: Icons.stars, text: 'Useful Links'),
          Divider(),
          _createDrawerItem(icon: Icons.logout, text: 'Logout'),
          Divider(),
          ListTile(
            title: Text('Version 0.0.1',
                style: TextStyle(
                    color: Colors.orange, fontStyle: FontStyle.italic)),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _createHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.grey, Colors.orange])
            /*image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('asset/images/logo-innotech.png'),
        )*/),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("LOLOZI Anas",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _createDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon, color: Colors.orange),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              text,
              style: TextStyle(fontSize: 15.0, color: Colors.grey),
            ),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
