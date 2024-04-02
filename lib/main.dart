import 'package:flutter/material.dart';

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
          child: Column(
            children: [
              // Header
              Container(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/img/Logo.png', width: 80, height: 50),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomeScreen()),
                            );
                          },
                          child: Text('Home'),
                        ),
                        TextButton(
                          onPressed: () {
                           Navigator.push(
                            context,
                              MaterialPageRoute(builder: (context) => MenuBookScreen()),
                            );
                          },
                          child: Text('Menu Book'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                             context,
                              MaterialPageRoute(builder: (context) => ContactScreen()),
                             );
                          },
                          child: Text('Contact'),
                        ),
                        IconButton(
                          icon: Icon(Icons.store, color: Color(0xFF422D4D)),
                          onPressed: () {
                            Navigator.push(
                             context,
                              MaterialPageRoute(builder: (context) => CartScreen()),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              
              Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Welcome To', style: TextStyle(fontSize: 24)),
                    Text('Sugar Daddy', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
                    Text('Coffee and Eatery', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
                    Text('We ensure organic coffee for you. Hoping you and your family enjoy it.'),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context, MaterialPageRoute(builder: (context) => MoreInfoScreen()),
                          );
                        },
                        child: Text('See More'),
                    ),
                  ],
                ),
              ),
              // Lanjutkan dengan bagian-bagian lainnya...
            ],
          ),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text('Halaman Beranda'),
      ),
    );
  }
}

class MenuBookScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Book'),
      ),
      body: Center(
        child: Text('Halaman Menu Book'),
      ),
    );
  }
}

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
      ),
      body: Center(
        child: Text('Halaman Kontak'),
      ),
    );
  }
}

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Center(
        child: Text('Halaman Keranjang Belanja'),
      ),
    );
  }
}
