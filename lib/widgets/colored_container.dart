import 'package:flutter/material.dart';

class ColoredContainer extends StatelessWidget {
  final Color color;

  const ColoredContainer(
    this.color, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      child: Container(
        width: 150,
        height: 150,
        color: color,
      ),
    );
  }
}
