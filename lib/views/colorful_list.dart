import 'package:flutter/material.dart';
import 'package:flutter_first_steps/widgets/custom_appbar.dart';

class ColorfulList extends StatefulWidget {
  const ColorfulList({Key? key}) : super(key: key);

  @override
  ColorfulListState createState() => ColorfulListState();
}

class ColorfulListState extends State<ColorfulList> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar("Цветной список"),
    );
  }
}
