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

   Widget _buildMenuItem(String name, String price, String imagePath) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name),
                  Text(price),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Add to cart functionality here
                      print('$name added to cart!');
                    },
                    icon: Icon(Icons.add_shopping_cart),
                    label: Text('Add to Cart'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 255, 255, 255), // Use backgroundColor instead of primary
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
