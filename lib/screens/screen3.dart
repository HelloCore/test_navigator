import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  final String tag;

  Screen3({this.tag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("Screen 1"),
      ),
      body: Center(
        child: Container(
          child: Hero(
            tag: "superman",
            child: Container(width: 40, height: 40, color: Colors.red),
          ),
        ),
      ),
    );
  }
}
