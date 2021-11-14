import 'package:flutter/material.dart';

class FAB extends StatelessWidget {
  final void Function() handler;
  const FAB(this.handler, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.edit),
      onPressed: () => {handler()},
    );
  }
}
