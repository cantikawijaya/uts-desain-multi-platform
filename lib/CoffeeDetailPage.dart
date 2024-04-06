import 'package:flutter/material.dart';

class CoffeeDetailPage extends StatelessWidget {
  final String category;

  const CoffeeDetailPage({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coffee Menu'),
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
                  _buildMenuItem('Americano', 'Rp. 35.000', 'assets/img/Americano.jpeg'),
                  _buildMenuItem('Cappucino', 'Rp. 35.000', 'assets/img/cappucino.jpeg'),
                  _buildMenuItem('Avogato', 'Rp. 35.000', 'assets/img/Avogato.jpeg'),
                  _buildMenuItem('Flatwhite', 'Rp. 35.000', 'assets/img/p5.jpeg'),
                  _buildMenuItem('Moccachino', 'Rp. 35.000', 'assets/img/mocca.jpg'),
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

