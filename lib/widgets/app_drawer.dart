import 'package:flutter/material.dart';
import 'package:smart_track_app/pages/history_page.dart';
import 'package:smart_track_app/routes/routes.dart';

class AppDrawer extends StatelessWidget {
  String accountName = "Anas LOLOZI", accountEmail = "anas.lolozi@gmail.com";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createUserAccountDrawerHeader(accountName, accountEmail),
          _createDrawerItem(icon: Icons.home, text: 'Dashboard',onTap:(){
            Navigator.pop(context);
            Navigator.pushNamed(context, Routes.dashboard);
          }),
          _createDrawerItem(
            icon: Icons.card_travel,
            text: 'Position',onTap: (){
            Navigator.pop(context);
            Navigator.pushNamed(context, Routes.position);
          }
          ),
          _createDrawerItem(icon: Icons.history, text: 'History',onTap: (){
            Navigator.pop(context);
            Navigator.pushNamed(context, Routes.history);
          }),
          _createDrawerItem(icon: Icons.cake_sharp, text: 'Command',onTap: (){
            Navigator.pop(context);
            Navigator.pushNamed(context, Routes.command);
          }),
          _createDrawerItem(icon: Icons.now_wallpaper, text: 'Contact',),
          Divider(),
          _createDrawerItem(icon: Icons.stars, text: 'About Us'),
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

  navigateTo(context, routeName) {
    Navigator.pop(context);
    Navigator.pushNamed(context, routeName);
  }

  Widget _createUserAccountDrawerHeader(String accountName, String accountEmail) {
    List<String> fullName = accountName.toString().split(" ");
    String firstName = fullName[0], lastName =  fullName[1];
    return UserAccountsDrawerHeader(
      accountName: Text(accountName),
      accountEmail: Text(accountEmail),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.grey, Colors.orange]),
      ),
      currentAccountPicture: CircleAvatar(
        backgroundColor: Colors.white,
        child: Text(firstName.substring(0,1).toUpperCase() + " " +lastName.substring(0,1).toUpperCase(), style: TextStyle(fontWeight: FontWeight.bold), ),
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
        )*/
            ),
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
