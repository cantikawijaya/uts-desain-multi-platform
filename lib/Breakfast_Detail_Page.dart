import 'package:flutter/material.dart';

class Breakfast_Detail_Page extends StatelessWidget {
  final String category;

  const Breakfast_Detail_Page({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Healthy Juice Detail'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Category: $category'),
                // Menu items list
            Expanded(
              child: ListView(
                children: [
                  _buildMenuItem('Pancakes', 'Rp. 25.000', 'assets/img/menusdc.png'),
                  _buildMenuItem('Omelette', 'Rp. 20.000', 'assets/img/menusdc.png'),
                  _buildMenuItem('Fruit Salad', 'Rp. 15.000', 'assets/img/menusdc.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  