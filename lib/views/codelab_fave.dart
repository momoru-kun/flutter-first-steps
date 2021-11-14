import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first_steps/widgets/custom_appbar.dart';

class CodeLabFave extends StatelessWidget {
  final Set<WordPair> saved;
  const CodeLabFave(this.saved, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tiles = saved.map(
      (pair) => ListTile(
        title: Text(
          pair.asPascalCase,
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
    );
    final divided = tiles.isNotEmpty
        ? ListTile.divideTiles(
            context: context,
            tiles: tiles,
          ).toList()
        : <Widget>[];
    return Scaffold(
      appBar: const CustomAppbar("Лайкнутые слова"),
      body: ListView(
        children: divided,
      ),
    );
  }
}
