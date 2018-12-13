import 'package:flutter/material.dart';
import 'package:flutter_app/demo/CustomJPasswordField.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    final wordPair = new WordPair.random();
    // TODO: implement build
    return new MaterialApp(
      title: "Startup Name Generator",
      theme: new ThemeData(
        primaryColor: Colors.red,
      ),
//      home: new CustomJPasswordField(),
    );
  }
}
