import 'package:flutter/material.dart';
import 'package:flutter_first_steps/widgets/custom_appbar.dart';

class Codelab extends StatefulWidget {
  const Codelab({Key? key}) : super(key: key);

  @override
  CodelabState createState() => CodelabState();
}

class CodelabState extends State<Codelab> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar("Контент Кодлаба"),
    );
  }
}
