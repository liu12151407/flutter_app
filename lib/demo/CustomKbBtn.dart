import 'package:flutter/material.dart';

class CustomKbBtn extends StatefulWidget {
  String text;
  final callback;

  CustomKbBtn({Key key, this.text, this.callback}) : super(key: key);

  @override
  _CustomKbBtnState createState() => _CustomKbBtnState();
}

class _CustomKbBtnState extends State<CustomKbBtn> {
  var backMethod;

  void back() {
    widget.callback("$backMethod");
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var _screenWidth = mediaQueryData.size.width;
    return Container(
      height: 50,
      width: _screenWidth / 3,
      child: new OutlineButton(
        onPressed: back,
        shape: new RoundedRectangleBorder(
          side: new BorderSide(color: Color(0x10333333)),
          borderRadius: new BorderRadius.circular(0),
        ),
      ),
    );
  }
}
