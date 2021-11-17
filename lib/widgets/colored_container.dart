import 'package:flutter/material.dart';

class ColoredContainer extends StatelessWidget {
  final Color color;

  const ColoredContainer(
    this.color, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      color: color,
    );
  }
}
