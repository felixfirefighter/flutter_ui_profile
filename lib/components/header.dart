import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: HeaderPainter(),
      child: Container(
        height: 180,
        width: double.infinity,
      ),
    );
  }
}

class HeaderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.style = PaintingStyle.fill;

    var path = Path();

    //left square
    // #794570
    // #6C4683
    // #68468A
    // #52356B
    // #573B76
    // #5F437D
    path.lineTo(size.width * 0.3, 0);
    path.lineTo(size.width * 0.5, size.height * 0.4);
    path.lineTo(size.width * 0.3, size.height);
    path.lineTo(0, size.height);

    // final gradient = RadialGradient(colors: [
    //   Color(0xFF794570),
    //   Color(0xFF6C4683),
    // ], stops: [
    //   0.5,
    //   1.0
    // ]);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
