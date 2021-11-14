import 'package:flutter/material.dart';

const double _kAppBarProgressIndicatorHeight = 6.0;

class AppBarProgressIndicator extends LinearProgressIndicator
    implements PreferredSizeWidget {
  const AppBarProgressIndicator({
    Key? key,
    double? value,
    Color? backgroundColor,
    Animation<Color>? valueColor,
  }) : super(
          key: key,
          value: value,
          backgroundColor: backgroundColor,
          valueColor: valueColor,
        );

  @override
  Size get preferredSize => const Size(double.infinity, 6);
}
