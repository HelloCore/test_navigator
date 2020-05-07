import 'package:flutter/material.dart';
import 'package:test_navigator/screens/settings.dart';

class Screen2 extends StatelessWidget {
  final String tag;

  Screen2({this.tag});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 2"),
        backgroundColor: Colors.amberAccent,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Hero(
                tag: "superman",
                child: Container(width: 40, height: 40, color: Colors.red),
              ),
              RaisedButton(
                  onPressed: () {
                    Navigator.of(context, rootNavigator: true).push(
                        MaterialPageRoute(builder: (ctx) => SettingScreen()));
                  },
                  child: Text("Go GO"))
            ],
          ),
        ),
      ),
    );
  }
}
