import 'package:flutter/material.dart';
import 'text_painter_widget.dart';

class CustomTextColoredUnderline extends StatelessWidget {
  final TextSpan textSpan;

  const CustomTextColoredUnderline({
    required this.textSpan,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final TextPainter textPainter = TextPainter(
          text: textSpan,
          textDirection: TextDirection.ltr,
        )..layout(maxWidth: constraints.maxWidth);

        final double textWidth = textPainter.width;

        return Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TextPainterWidget(textPainter: textPainter),
                Row(
                  children: <Widget>[
                    const Text('View All'),
                    const SizedBox(width: 8),
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: textWidth,
                  child: const Divider(
                    color: Colors.blue,
                    thickness: 2,
                  ),
                ),
                const Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}