import 'package:flutter/material.dart';

class Codelab extends StatefulWidget {
  const Codelab({Key? key}) : super(key: key);

  @override
  CodelabState createState() => CodelabState();
}

class CodelabState extends State<Codelab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Контент Кодлаба",
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
