import 'package:flutter/material.dart';

class CoffeeDetailPage extends StatelessWidget {
  final String category;

  const CoffeeDetailPage({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coffee Detail'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Category: $category'),
            // ... other UI elements like images, descriptions, lists, buttons
          ],
        ),
      ),
    );
  }
}
