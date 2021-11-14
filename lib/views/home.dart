import 'package:flutter/material.dart';
import 'package:flutter_first_steps/colors.dart';
import 'package:flutter_first_steps/controllers/navigation.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class NavButton extends StatelessWidget {
  final String title;
  final String route;

  const NavButton(
    this.title,
    this.route, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child: ElevatedButton(
        onPressed: () => {
          Navigator.pushNamed(
            context,
            route,
          )
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          padding: MaterialStateProperty.all<EdgeInsets>(
            const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 21,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.button,
            ),
            const Icon(Icons.arrow_forward, color: textColor),
          ],
        ),
      ),
    );
  }
}

final List<NavButton> menuItems = [
  const NavButton('4 квадрата', Routes.squares),
  const NavButton('Цветной список', Routes.colorList),
  const NavButton('Codelab', Routes.colorList),
  const NavButton('Асинхронный запрос', Routes.colorList),
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Главная",
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: menuItems,
        ),
      ),
    );
  }
}
