import 'package:flutter/material.dart';

// const double _kCurveHeight = 95;
class EllipsePainter extends CustomPainter {
  EllipsePainter({this.color = Colors.black});

  Color color;

  @override
  void paint(Canvas canvas, Size size) {
    //1
    // final shapeBounds = Rect.fromLTRB(0, 0, size.width, size.height);
//2
    final paint = Paint()..color = color;
//3
// canvas.drawRect(shapeBounds, paint);
    // final p = Path();
    // p.lineTo(0, 10);
    // p.relativeQuadraticBezierTo(15, 25, 35, 45);
    // p.lineTo(size.width, 0);
    // p.close();
// final angle = -math.pi / 4;

    // canvas.drawPath(p, paint);
    canvas.translate(size.width * 0.1, size.height * 0.1);
    canvas.rotate(20);
    canvas.drawOval(const Rect.fromLTWH(-100, -300, 550, 500), paint);
    // canvas.drawOval(Rect.fromCenter(center:Offset.zero,width:50*5,height:100*5),paint);
  }

  @override
  bool shouldRepaint(EllipsePainter oldDelegate) {
    return color != oldDelegate.color;
  }
}
