import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
        title: 'hello',
        home: Scaffold(
            appBar: AppBar(
              title: RandomWordsApp(),
            ),
            body: Center(child: RandomWordsApp())));
  }
}

class RandomWordsApp extends StatefulWidget {
  @override
  RandomWordsAppState createState() {
    return new RandomWordsAppState();
  }
}

class RandomWordsAppState extends State<RandomWordsApp> {
  final _wordPair = <WordPair>[];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      if (index >= _wordPair.length) {
        _wordPair.addAll(generateWordPairs().take(10));
      }
      return _buildRow(_wordPair[index]);
    });
  }

  Widget _buildRow(WordPair wordPair) {
    return ListTile(
      title: Text(wordPair.asLowerCase, style: TextStyle(fontSize: 18.0)),
    );
  }
}
