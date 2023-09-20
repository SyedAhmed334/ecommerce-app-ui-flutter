// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_app_ui/Data/product_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../widgets/product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image(
                image: AssetImage('assets/images/cover.jpg'),
                height: MediaQuery.of(context).size.height / 3.6,
                fit: BoxFit.contain,
              ),
              Positioned(
                top: 160,
                left: 5,
                child: Text(
                  'Azeer\'s Products',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 15),
            width: double.infinity,
            child: Text(
              'Earbuds',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 5 / 6,
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 5,
              ),
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                return ProductCard(
                    url: products[index].url,
                    title: products[index].title,
                    price: products[index].price,
                    rating: products[index].rating,
                    users: products[index].users);
              },
            ),
          ),
        ],
      ),
    );
  }
}
