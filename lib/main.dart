import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sugar Daddy Coffee and Eatery',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sugar Daddy Coffee and Eatery'),
        ),
        body: SingleChildScrollView(
        ),
      ),
    );
  }
}
