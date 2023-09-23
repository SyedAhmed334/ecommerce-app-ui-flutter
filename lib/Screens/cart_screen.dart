// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app_ui/Models/cart.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  final List<Cart> cartItems;
  CartScreen({required this.cartItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) => ListTile(
            leading: Image.asset(cartItems[index].url),
            title: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(cartItems[index].title),
            ),
            subtitle: Text('Rs. ${cartItems[index].price}')),
      ),
    );
  }
}
