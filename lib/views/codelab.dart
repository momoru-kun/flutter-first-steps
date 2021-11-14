import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_first_steps/widgets/custom_appbar.dart';

class Codelab extends StatefulWidget {
  const Codelab({Key? key}) : super(key: key);

  @override
  CodelabState createState() => CodelabState();
}

class CodelabState extends State<Codelab> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18);

  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
        padding: const EdgeInsets.all(16),
        itemBuilder: (BuildContext _context, int i) {
          if (i.isOdd) {
            return const Divider();
          }

          final int index = i ~/ 2;
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar("Контент Кодлаба"),
      body: _buildSuggestions(),
    );
  }
}
