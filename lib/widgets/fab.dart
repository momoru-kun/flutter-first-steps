import 'package:flutter/material.dart';

class FAB extends StatelessWidget {
  final void Function()? onPressed;
  const FAB({required this.onPressed, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.edit),
      onPressed: onPressed,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(16.0),
        ),
      ),
    );
  }
}
