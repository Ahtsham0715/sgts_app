import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree
// CustomPaint(
//     size: Size(WIDTH, (WIDTH*1.9222222222222223).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
//     painter: RPSCustomPainter(),
// )

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint_0_stroke.color = const Color(0xffEEF2E2).withOpacity(1.0);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(size.width * -1.445258, size.height * 0.3814205,
                size.width * 2.200814, size.height * 0.8732124),
            bottomRight: Radius.circular(size.width * 0.4291667),
            bottomLeft: Radius.circular(size.width * 0.4291667),
            topLeft: Radius.circular(size.width * 0.4291667),
            topRight: Radius.circular(size.width * 0.4291667)),
        paint_0_stroke);

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(size.width * -1.445258, size.height * 0.3814205,
                size.width * 2.200814, size.height * 0.8732124),
            bottomRight: Radius.circular(size.width * 0.4291667),
            bottomLeft: Radius.circular(size.width * 0.4291667),
            topLeft: Radius.circular(size.width * 0.4291667),
            topRight: Radius.circular(size.width * 0.4291667)),
        paint_0_fill);

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = const Color(0xffFFCB05).withOpacity(0.16);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(size.width * -1.194197, size.height * 0.4195390,
                size.width * 1.890939, size.height * 0.6787572),
            bottomRight: Radius.circular(size.width * 0.4222222),
            bottomLeft: Radius.circular(size.width * 0.4222222),
            topLeft: Radius.circular(size.width * 0.4222222),
            topRight: Radius.circular(size.width * 0.4222222)),
        paint_1_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
