
import 'package:flutter/material.dart';

class CardPainter extends CustomPainter {
  final Color cardColor;
  CardPainter({required this.cardColor});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint1 = Paint()
      ..color = cardColor
      ..strokeWidth = 2
    ;

    var path = Path()
      // ..lineTo(size.width * 0.35, 10)
      ..quadraticBezierTo(size.width * 0.5, size.height * 0.45, size.width, 0)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..lineTo(0, 0)
      ..close();

    Paint paint2 = Paint()
      ..color = cardColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;

    Path path2 = Path()
      // ..lineTo(size.width * 0.35, 10)
      ..moveTo(size.width * 0.33, size.height * 0.1)
      ..lineTo(size.width * 0.68, size.height * 0.1);

    canvas.drawPath(path, paint1);
    canvas.drawPath(path2, paint2);
  }

  @override
  bool shouldRepaint(CardPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(CardPainter oldDelegate) => false;
}
