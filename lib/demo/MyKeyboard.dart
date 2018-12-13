import 'package:flutter/material.dart';
import 'package:flutter_app/demo/CustomKbBtn.dart';

class MyKeyboard extends StatefulWidget {
  final callback;

  MyKeyboard(this.callback);

  @override
  _MyKeyboardState createState() => _MyKeyboardState();
}

class _MyKeyboardState extends State<MyKeyboard> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  var backMethod;

  void onCommitChange() {
    widget.callback(new KeyEvent("commit"));
  }

  void onOneChange(BuildContext cont) {
    widget.callback(new KeyEvent("1"));
  }

  void onTwoChange(BuildContext cont) {
    widget.callback(new KeyEvent("2"));
  }

  void onThreeChange(BuildContext cont) {
    widget.callback(new KeyEvent("3"));
  }

  void onFourChange(BuildContext cont) {
    widget.callback(new KeyEvent("4"));
  }

  void onFiveChange(BuildContext cont) {
    widget.callback(new KeyEvent("5"));
  }

  void onSixChange(BuildContext cont) {
    widget.callback(new KeyEvent("6"));
  }

  void onSevenChange(BuildContext cont) {
    widget.callback(new KeyEvent("7"));
  }

  void onEightChange(BuildContext cont) {
    widget.callback(new KeyEvent("8"));
  }

  void onNineChange(BuildContext cont) {
    widget.callback(new KeyEvent("9"));
  }

  void onZeroChange(BuildContext cont) {
    widget.callback(new KeyEvent("0"));
  }

  void onDeleteChange() {
    widget.callback(new KeyEvent("del"));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: _scaffoldKey,
      width: double.infinity,
      height: 250,
      color: Colors.white,
      child: new Column(
        children: <Widget>[
          new Container(
            height: 30,
            color: Colors.white,
            alignment: Alignment.center,
            child: new Text(
              "隐藏",
              style: new TextStyle(fontSize: 12, color: Color(0xff999999)),
            ),
          ),
          new Column(
            children: <Widget>[
              new Row(
                children: <Widget>[
                  CustomKbBtn(
                    text: "1",
                    callback: (val) => onOneChange(context),
                  ),
                  CustomKbBtn(
                    text: "2",
                    callback: (val) => onTwoChange(context),
                  ),
                  CustomKbBtn(
                    text: "3",
                    callback: (val) => onThreeChange(context),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class KeyEvent {
  String key;

  KeyEvent(this.key);

  bool isDelete() => this.key == "del";

  bool isCommit() => this.key == "commit";
}
