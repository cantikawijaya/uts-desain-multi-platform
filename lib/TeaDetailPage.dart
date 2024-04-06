import 'package:flutter/material.dart';

class TeaDetailPage extends StatelessWidget {
  final String category;

  const TeaDetailPage({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tea Menu'),
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
                  _buildMenuItem('English Breakfast Tea', 'Rp. 30.000', 'assets/img/bftea.jpg'),
                  _buildMenuItem('Jasmine tea', 'Rp. 30.000', 'assets/img/jminetea.jpg'),
                  _buildMenuItem('Earl Grey Tea', 'Rp. 30.000', 'assets/img/egtea.jpg'),
                  _buildMenuItem('Ginger Tea', 'Rp. 30.000', 'assets/img/gingertea.jpg'),
                  _buildMenuItem('Black Tea', 'Rp. 30.000', 'assets/img/blacktea.jpg'),
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

