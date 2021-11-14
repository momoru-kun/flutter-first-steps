import 'package:flutter/material.dart';

class ColorfulList extends StatefulWidget {
  const ColorfulList({Key? key}) : super(key: key);

  @override
  ColorfulListState createState() => ColorfulListState();
}

class ColorfulListState extends State<ColorfulList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Цветной список",
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
