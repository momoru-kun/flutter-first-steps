import 'package:flutter/material.dart';
import 'package:flutter_first_steps/views/codelab.dart';
import 'package:flutter_first_steps/views/colorful_list.dart';
import 'package:flutter_first_steps/views/home.dart';
import 'package:flutter_first_steps/views/pictures.dart';
import 'package:flutter_first_steps/views/squares.dart';

abstract class Routes {
  static const main = '/';
  static const squares = '/squares';
  static const colorList = '/color_list';
  static const codelab = '/codelab';
  static const pictures = '/pictures';
}

class AppNavigation {
  var routes = <String, Widget Function(BuildContext)>{
    Routes.main: (context) => const HomePage(),
    Routes.squares: (context) => const Sqares(),
    Routes.colorList: (context) => const ColorfulList(),
    Routes.codelab: (context) => const Codelab(),
    Routes.pictures: (context) => const Pictures(),
  };
}
