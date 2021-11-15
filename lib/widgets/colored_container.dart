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
        vertical: 10, //TODO: этот паддинг не относится к контейнеру, так как у тебя в итоге получается неверное расстояние.
        // Подобные вещи лучше задавать извне, это более гибкий подход. Сам виджет лишь знает как ему отобразить цвет.
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
