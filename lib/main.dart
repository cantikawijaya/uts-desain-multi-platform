import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sugar Daddy Coffee and Eatery',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: MyHomePage(title: 'Sugar Daddy Caffe'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Color.fromARGB(255, 145, 83, 136),
        foregroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Banner
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              child: Stack(
                children: [
                  // Background image
                  Image.asset(
                    'assets/img/banner3.jpeg',
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                  // Text on top of the image
                  Center(
                    child: Text(
                      'Sugar Daddy\nCoffee and Eatery',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 254, 252, 255),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Search Bar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Cari Menu...',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buildMenuItem('Coffee', Icons.coffee, () => navigateToMenuPage('Coffee')),
                  _buildMenuItem('Tea', Icons.local_drink, () => navigateToMenuPage('Tea')),
                  _buildMenuItem('Juice', Icons.local_drink, () => navigateToMenuPage('Healthy Juice')),
                  _buildMenuItem('Breakfast', Icons.fastfood, () => navigateToMenuPage('Breakfast')),
                  _buildMenuItem('Dessert', Icons.cake, () => navigateToMenuPage('Dessert')),
                  _buildMenuItem('', Icons.shopping_cart, () => navigateToMenuPage('Your Cart')),
                ],
              ),
            ),
            // Daftar Menu
            _buildMenuList(),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(String title, IconData icon, void Function()? onPressed) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, size: 32),
      label: Text(title),
    );
  }

  void navigateToMenuPage(String category) {
  late Widget page;
  switch (category) {
    case 'Coffee':
      page = CoffeeDetailPage(category: category);
      break;
    case 'Tea':
      page = TeaDetailPage(category: category);
      break;
    case 'Healthy Juice':
      page = HealthyJuiceDetailPage(category: category);
      break;
    case 'Breakfast':
      page = Breakfast_Detail_Page(category: category);
      break;
    case 'Dessert':
      page = DessertDetailPage(category: category);
      break;
    default:
      return;
  }
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => page,
    ),
  );
}

  Widget _buildMenuList() {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: widget.menuItems.length,
      itemBuilder: (context, index) {
        return _buildMenuItemCard(widget.menuItems[index]);
      },
    );
  }

  Widget _buildMenuItemCard(MenuItem menuItem) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.asset(
              menuItem.imageAssetPath,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(menuItem.name),
                  Text('Rp. ${menuItem.price.toStringAsFixed(2)}'), // Show price with 2 decimal places
                  Text(menuItem.description),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          // Add to cart functionality here
                          print('${menuItem.name} added to cart!');
                        },
                        icon: Icon(Icons.add_shopping_cart),
                        label: Text('Add to Cart'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 255, 255, 255), // Use backgroundColor instead of primary
                        ),
                      ),
                    ],
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