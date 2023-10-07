// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:ecommerce_app_ui/Data/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Consumer<CartProvider>(
            builder: (
          context,
          value,
          child,
        ) =>
                Text('My Cart (${value.cartItems.length})')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Consumer<CartProvider>(
          builder: (context, value, child) => ListView.builder(
            itemCount: value.cartItems.length,
            itemBuilder: (context, index) => Slidable(
              key: const ValueKey(
                  0), // Specify a key if the Slideable is dismissible.
              endActionPane: ActionPane(
                motion: ScrollMotion(),
                children: [
                  SlidableAction(
                    onPressed: (context) {
                      value.removeCartItem(index);
                    },
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    icon: Icons.delete,
                    label: 'Delete',
                  ),
                ],
              ),
              child: Card(
                elevation: 2,
                child: ListTile(
                    isThreeLine: true,
                    leading: Image.asset(value.cartItems[index].url),
                    title: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(value.cartItems[index].title),
                    ),
                    subtitle: Text('Rs. ${value.cartItems[index].price}')),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
