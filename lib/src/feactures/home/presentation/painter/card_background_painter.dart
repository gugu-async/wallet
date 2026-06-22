import 'package:flutter/material.dart';

class CardBackgroundPainter extends CustomPainter {
  final Color color;
  final LinearGradient linearGradient;
  CardBackgroundPainter({required this.color, required this.linearGradient});

  @override
  void paint(Canvas canvas, Size size) {
    var rect = Offset.zero & size;

    //One
    Paint paint1 = Paint()..shader = linearGradient.createShader(rect);

    var path1 = Path()
      ..lineTo(3, size.height * 0.49)
      ..quadraticBezierTo(
        size.width * 0.4,
        size.height * 0.56,
        size.width * 0.6,
        size.height * 0.35,
      )
      ..quadraticBezierTo(
        size.width - (size.width * 0.3),
        size.height * 0.25,
        size.width,
        size.height * 0.35,
      )
      ..lineTo(size.width, 3)
      ..close();
    canvas.drawPath(path1, paint1);

    //twon

    Paint paint2 = Paint()..color = color;

    var path2 = Path()
      ..lineTo(0, size.height * 0.23)
      ..quadraticBezierTo(
        size.width * 0.4,
        size.height * 0.53,
        size.width * 0.6,
        size.height * 0.3,
      )
      ..quadraticBezierTo(
        size.width - (size.width * 0.3),
        size.height * 0.2,
        size.width,
        size.height * 0.15,
      )
      ..lineTo(size.width, 0)
      ..close();
    canvas.drawPath(path2, paint2);
  }

  @override
  bool shouldRepaint(CardBackgroundPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(CardBackgroundPainter oldDelegate) => false;
}
