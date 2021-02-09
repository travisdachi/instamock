import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  final int currentPage;
  final int pageCount;

  const PageIndicator({
    Key? key,
    required this.currentPage,
    required this.pageCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (pageCount < 2) return Container();
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: IntRange(0, pageCount - 1)
          .map((index) {
            if (index == currentPage) {
              return _circle(Colors.black54, 12);
            } else {
              return _circle(Colors.black38, 4);
            }
          })
          .expand((element) => [element, SizedBox(width: 8)])
          .takeFirst((pageCount * 2) - 1)
          .toList(),
    );
  }

  Widget _circle(Color color, double size) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}
