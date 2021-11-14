import 'package:flutter/material.dart';
import 'package:flutter_first_steps/widgets/custom_appbar.dart';

class Pictures extends StatefulWidget {
  const Pictures({Key? key}) : super(key: key);

  @override
  PicturesState createState() => PicturesState();
}

class PicturesState extends State<Pictures> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar("Асинхронный запрос"),
    );
  }
}
