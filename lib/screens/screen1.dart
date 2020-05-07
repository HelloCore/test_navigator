import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  final String tag;

  Screen1({this.tag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 1"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: "superman",
                child: Container(width: 40, height: 40, color: Colors.red),
              ),
              RaisedButton(
                  onPressed: () {
                    Navigator.of(context, rootNavigator: true).pop();
                  },
                  child: Text("Go back"))
            ],
          ),
        ),
      ),
    );
  }
}
