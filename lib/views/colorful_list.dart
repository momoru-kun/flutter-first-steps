import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_first_steps/widgets/custom_appbar.dart';
import 'package:flutter_first_steps/widgets/fab.dart';

class ColorfulList extends StatefulWidget {
  const ColorfulList({Key? key}) : super(key: key);

  @override
  ColorfulListState createState() => ColorfulListState();
}

class ColorfulListState extends State<ColorfulList> {
  var tiles = List<Color>.filled(25, const Color(0xFFC4C4C4));

  void _updateColors() {
    for (int i = 0; i < 25; i++) {
      tiles[i] =
          Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    }
  }

  Widget listBuilder(BuildContext context, int i) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        tileColor: tiles[i],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar("Цветной список"),
      floatingActionButton: FAB(
        onPressed: _updateColors,
      ),
      body: ListView.builder(
        itemExtent: 90,
        itemCount: tiles.length,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
        itemBuilder: listBuilder,
      ),
    );
  }
}
