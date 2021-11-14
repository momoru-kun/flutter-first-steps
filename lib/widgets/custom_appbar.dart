import 'package:flutter/material.dart';
import 'package:flutter_first_steps/colors.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppbar(this.title, {Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(55);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          size: 28,
          color: textColor,
        ),
        onPressed: () => {Navigator.pop(context)},
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
