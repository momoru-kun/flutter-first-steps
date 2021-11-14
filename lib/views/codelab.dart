import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_first_steps/colors.dart';
import 'package:flutter_first_steps/views/codelab_fave.dart';
import 'package:flutter_first_steps/widgets/custom_appbar.dart';

class Codelab extends StatefulWidget {
  const Codelab({Key? key}) : super(key: key);

  @override
  CodelabState createState() => CodelabState();
}

class CodelabState extends State<Codelab> {
  final _suggestions = <WordPair>[];
  final _saved = <WordPair>{};

  Widget _buildRow(WordPair pair) {
    final alreadySaved = _saved.contains(pair);

    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: Theme.of(context).textTheme.bodyText2,
      ),
      trailing: Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
        semanticLabel: alreadySaved ? 'Убрать из сохраненок' : 'Сохранить',
      ),
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        });
      },
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
      appBar: CustomAppbar(
        "Контент Кодлаба",
        actions: [
          IconButton(
            icon: const Icon(
              Icons.list,
              size: 28,
              color: textColor,
            ),
            onPressed: () => {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (context) => CodeLabFave(_saved),
                ),
              )
            },
            tooltip: 'Лайкнуые слова',
          ),
        ],
      ),
      body: _buildSuggestions(),
    );
  }
}
