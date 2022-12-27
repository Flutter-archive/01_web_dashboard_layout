import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Row(
          children: [
            sideMenu(),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(12),
                color: Colors.blueAccent,
                child: Column(
                  children: [
                    Container(color: Colors.redAccent,height: 80,margin: EdgeInsets.all(6)),
                    Expanded(child: Container(color: Colors.yellowAccent,margin: EdgeInsets.all(6)))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Drawer sideMenu() {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Center(
              child: Text(
                "SideMenu",
                style: TextStyle(fontSize: 40),
              ),
            ),
          ),
          ListTile(
            horizontalTitleGap: 0,
            onTap: () {},
            title: Text("D A S H B O A R D"),
            leading: Icon(Icons.dashboard),
          ),
          ListTile(
            horizontalTitleGap: 0,
            onTap: () {},
            title: Text("R E P O R T"),
            leading: Icon(Icons.report),
          ),
          ListTile(
            horizontalTitleGap: 0,
            onTap: () {},
            title: Text("S E T T I N G S"),
            leading: Icon(Icons.settings),
          )
        ],
      ),
    );
  }
}
