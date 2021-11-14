import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_first_steps/widgets/colored_container.dart';
import 'package:flutter_first_steps/widgets/custom_appbar.dart';
import 'package:flutter_first_steps/widgets/fab.dart';

class Sqares extends StatefulWidget {
  const Sqares({Key? key}) : super(key: key);

  @override
  SqaresState createState() => SqaresState();
}

class SqaresState extends State<Sqares> {
  bool colored = false;

  var colors = <Color>[
    const Color(0xFFC4C4C4),
    const Color(0xFFC4C4C4),
    const Color(0xFFC4C4C4),
    const Color(0xFFC4C4C4),
  ];

  _updateColors() {
    if (!colored) colored = true;

    for (int i = 0; i < 4; i++) {
      colors[i] =
          Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar("4 квадрата"),
      floatingActionButton: FAB(onPressed: () {
        setState(_updateColors);
      }),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          !colored
              ? Text(
                  "Тыкни на кнопку, чтобы сделать квадратики цветными",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1,
                )
              : Container(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ColoredContainer(colors[0]),
              ColoredContainer(colors[1])
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ColoredContainer(colors[2]),
              ColoredContainer(colors[3])
            ],
          ),
        ],
      ),
    );
  }
}
