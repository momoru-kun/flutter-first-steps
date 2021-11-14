import 'package:flutter/material.dart';

class Pictures extends StatefulWidget {
  const Pictures({Key? key}) : super(key: key);

  @override
  PicturesState createState() => PicturesState();
}

class PicturesState extends State<Pictures> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Асинхронный запрос",
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
