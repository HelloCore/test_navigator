import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Hero(
              tag: "superman",
              child: Container(width: 40, height: 40, color: Colors.red),
            ),
            Text("This is setting screen"),
          ],
        ),
      ),
    );
  }
}
