import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_first_steps/widgets/colored_container.dart';
import 'package:flutter_first_steps/widgets/custom_appbar.dart';
import 'package:flutter_first_steps/widgets/fab.dart';

class Squares extends StatefulWidget {
  const Squares({Key? key}) : super(key: key);

  @override
  SquaresState createState() => SquaresState();
}

class SquaresState extends State<Squares> {
  bool colored = false;

  var colors = <Color>[
    const Color(0xFFC4C4C4),
    const Color(0xFFC4C4C4),
    const Color(0xFFC4C4C4),
    const Color(0xFFC4C4C4),
  ];

  void _updateColors() {
    setState(() {
      if (!colored) colored = true;

      for (int i = 0; i < 4; i++) {
        colors[i] =
            Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar("4 квадрата"),
      floatingActionButton: FAB(onPressed: _updateColors),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            !colored
                ? Text(
                    "Тыкни на кнопку, чтобы сделать квадратики цветными",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText1,
                  )
                : const SizedBox.shrink(),
            GridView.count(
              shrinkWrap: true,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              padding: const EdgeInsets.only(top: 16),
              children: [
                ColoredContainer(colors[0]),
                ColoredContainer(colors[1]),
                ColoredContainer(colors[2]),
                ColoredContainer(colors[3]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
