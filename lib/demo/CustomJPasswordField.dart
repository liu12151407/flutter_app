import 'dart:math';

import 'package:flutter/material.dart';

//https://juejin.im/post/5c10ef31e51d452e2c698673?utm_source=gold_browser_extension
class CustomJPasswordField extends StatelessWidget {
  String data;

  CustomJPasswordField(this.data);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MyCustom(data),
    );
  }
}

class MyCustom extends CustomPainter {
  String pwdLength;

  MyCustom(this.pwdLength);

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint mPwdPaint;
    Paint mRectPaint;
    mPwdPaint = new Paint();
    mPwdPaint.color = Colors.black;

    mRectPaint = new Paint();
    mRectPaint.color = Colors.grey;

    RRect rect = new RRect.fromLTRBR(
        0, 0, size.width, size.height, new Radius.circular(size.height / 12));
    mRectPaint.style = PaintingStyle.stroke;
    canvas.drawRRect(rect, mRectPaint);

    var per = size.width / 6;
    var offsetX = per;
    while (offsetX < size.width) {
      canvas.drawLine(
          new Offset(offsetX, 0), new Offset(offsetX, size.height), mRectPaint);
      offsetX += per;
    }
    var half = per / 2;
    var radio = per / 8;
    mPwdPaint.style = PaintingStyle.fill;
    for (int i = 0; i < pwdLength.length && i < 6; i++) {
      canvas.drawArc(
          new Rect.fromLTRB(i * per + half - radio, size.height / 2 - radio,
              i * per + half + radio, size.height / 2 + radio),
          0.0,
          2 * pi,
          true,
          mPwdPaint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
