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
          Column(
        children: [
          Image.asset('assets/img/freedlv.png', width: 80, height: 80),
          Text('Free Delivery'),
        ],
      ),
          Column(
        children: [
          Image.asset('assets/img/dine in.png', width: 80, height: 80),
          Text('Dine In'),
        ],
      ),
          Column(
        children: [
          Image.asset('assets/img/online_order.png', width: 80, height: 80),
          Text('Online Order'),
        ],
      ),
          Column(
        children: [
          Image.asset('assets/img/bestseller.png', width: 80, height: 80),
          Text('Best Seller'),
        ],
      ),
          Column(
        children: [
          Image.asset('assets/img/menusdc.png', width: 80, height: 80),
          Text('Our Menu'),
        ],
      ),
          Column(
        children: [
          Image.asset('assets/img/supp.png', width: 80, height: 80),
          Text('CS 24/7'),
        ],
      ),

        ),
      ),
    );
  }
}
