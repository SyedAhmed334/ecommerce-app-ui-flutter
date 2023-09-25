// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app_ui/Models/cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CartScreen extends StatefulWidget {
  final List<Cart> cartItems;
  CartScreen({required this.cartItems});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart (${widget.cartItems.length})'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: widget.cartItems.length,
          itemBuilder: (context, index) => Slidable(
// Specify a key if the Slidable is dismissible.
            key: const ValueKey(0),
// The start action pane is the one at the left or the top side.

// The end action pane is the one at the right or the bottom side.
            endActionPane: ActionPane(
              motion: ScrollMotion(),
              children: [
                SlidableAction(
                  onPressed: (context) {
                    widget.cartItems.removeAt(index);
                    setState(() {});
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
                  leading: Image.asset(widget.cartItems[index].url),
                  title: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(widget.cartItems[index].title),
                  ),
                  subtitle: Text('Rs. ${widget.cartItems[index].price}')),
            ),
          ),
        ),
      ),
    );
  }
}
