import 'package:flutter/material.dart';

class DessertDetailPage extends StatelessWidget {
  final String category;

  const DessertDetailPage({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dessert Menu'),
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
                  _buildMenuItem('Chocolate Brownies', 'Rp. 30.000', 'assets/img/Brownies.jpeg'),
                  _buildMenuItem('Carrot Cake', 'Rp. 30.000', 'assets/img/np4.jpeg'),
                  _buildMenuItem('Waffle With Ice Cream', 'Rp. 30.000', 'assets/img/waffle.jpg'),
                  _buildMenuItem('Tiramisu Cake', 'Rp. 30.000', 'assets/img/tiramisu.jpg'),
                  _buildMenuItem('Banana Caramel', 'Rp. 30.000', 'assets/img/bc.jpg'),
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

