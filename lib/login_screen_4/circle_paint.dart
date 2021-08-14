import 'package:flutter/material.dart';

class CirclePaint extends StatefulWidget {
  const CirclePaint({Key? key}) : super(key: key);

  @override
  _CirclePaintState createState() => _CirclePaintState();
}

class _CirclePaintState extends State<CirclePaint> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 90, left: 50),
        height: 100,
        width: 100,
        child: CustomPaint(
          painter: _CustomCircle(),
        ));
  }
}

class _CustomCircle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var height = size.height;
    var width = size.width;
    var center = Offset(height / 2, width / 2);
    var circleBrush = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    canvas.drawCircle(center, width, circleBrush);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
