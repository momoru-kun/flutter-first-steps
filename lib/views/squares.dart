import 'package:flutter/material.dart';
import 'package:flutter_first_steps/widgets/custom_appbar.dart';

class Sqares extends StatefulWidget {
  const Sqares({Key? key}) : super(key: key);

  @override
  SqaresState createState() => SqaresState();
}

class SqaresState extends State<Sqares> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar("4 квадрата"),
    );
  }
}
