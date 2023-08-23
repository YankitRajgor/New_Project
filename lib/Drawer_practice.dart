import 'package:flutter/material.dart';

class Drawer_Practice extends StatefulWidget {
  @override
  _Drawer_PracticeState createState() => _Drawer_PracticeState();
}

class _Drawer_PracticeState extends State<Drawer_Practice> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Center(
          child: Text("Drawer"),
        ),
        leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState?.openEndDrawer();
          },
          icon: Icon(Icons.account_box_outlined),
        ),
        actions: [
          IconButton(
            onPressed: () {
              print("object");
              scaffoldKey.currentState?.openEndDrawer();
            },
            icon: Icon(Icons.arrow_right, size: 40),
          ),
        ],
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Yankit Rajgor"),
              accountEmail: Text("Gorbha1111@gmail.com"),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage('assets/1692179337165.JPEG'),
                  fit: BoxFit.cover,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/Yankit Rajgor.jpg"),
              ),
            ),
            ListTile(
                leading: Icon(Icons.library_music),
                title: Text("Music"),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                leading: Icon(Icons.movie),
                title: Text("Movies"),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text("Shopping"),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                leading: Icon(Icons.apps),
                title: Text("Apps"),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                leading: Icon(Icons.dashboard),
                title: Text("Docs"),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap: () {
                  Navigator.pop(context);
                }),
            Divider(color: Colors.black, height: 5),
            ListTile(
                leading: Icon(Icons.info),
                title: Text("About"),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                leading: Icon(Icons.power_settings_new),
                title: Text("Logout"),
                onTap: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}
