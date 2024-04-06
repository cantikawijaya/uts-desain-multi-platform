import 'package:flutter/material.dart';

class HealthyJuiceDetailPage extends StatelessWidget {
  final String category;

  const HealthyJuiceDetailPage({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Healthy Juice Detail'),
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
