import 'package:flutter/material.dart';

class TextPainterWidget extends StatelessWidget {
  final TextPainter textPainter;

  const TextPainterWidget({
    Key? key,
    required this.textPainter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _TextPainterWidget(textPainter),
    );
  }
}

class _TextPainterWidget extends CustomPainter {
  final TextPainter textPainter;

  _TextPainterWidget(this.textPainter);

  @override
  void paint(Canvas canvas, Size size) {
    textPainter.layout();
    textPainter.paint(canvas, Offset.zero);
  }

  @override
  bool shouldRepaint(_TextPainterWidget oldDelegate) {
    return oldDelegate.textPainter.text != textPainter.text ||
        oldDelegate.textPainter.text?.style != textPainter.text?.style;
  }
}