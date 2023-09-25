// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_app_ui/Models/cart.dart';
import 'package:ecommerce_app_ui/Screens/cart_screen.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final String url;
  final String title;
  final String price;
  final List<Cart> cartItems;

  ProductDetails(
      {required this.url,
      required this.title,
      required this.price,
      required this.cartItems});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  void addCart(Cart cItem) {
    setState(() {
      widget.cartItems.add(cItem);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(title: Text('Ecommerce App'), actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CartScreen(cartItems: widget.cartItems);
              }));
            },
            child: Center(
              child: Badge(
                offset: Offset(6, -10),
                backgroundColor: Colors.white,
                textColor: Colors.black,
                label: Text('${widget.cartItems.length}'),
                child: Icon(Icons.shopping_cart),
              ),
            ),
          ),
        ),
      ]),
      body: Column(
        children: [
          Card(
            child: Image.asset(
              widget.url,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Expanded(
            child: Container(
              // height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          widget.title,
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: RichText(
                            text: TextSpan(
                              text: 'Rs. ',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                                TextSpan(
                                    text: widget.price,
                                    style: TextStyle(
                                        fontSize:
                                            30)), // Keep the remaining text as is
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              TextButton.icon(
                                style: ButtonStyle(
                                    foregroundColor: MaterialStatePropertyAll(
                                        Colors.black54),
                                    padding: MaterialStatePropertyAll(
                                      EdgeInsets.zero,
                                    )),
                                onPressed: () {},
                                icon: Icon(Icons.favorite_border),
                                label: Text('Add to Wishlist'),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              TextButton.icon(
                                  style: ButtonStyle(
                                      foregroundColor: MaterialStatePropertyAll(
                                          Colors.black54),
                                      padding: MaterialStatePropertyAll(
                                          EdgeInsets.zero)),
                                  onPressed: () {},
                                  icon: Icon(Icons.share),
                                  label: Text('Share Product')),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(0))),
                                elevation: MaterialStatePropertyAll(0)),
                            onPressed: () {},
                            child: Text('Buy Now'),
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.orange),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(0))),
                                elevation: MaterialStatePropertyAll(0)),
                            onPressed: () {
                              setState(() {
                                addCart(Cart(
                                    url: widget.url,
                                    title: widget.title,
                                    price: widget.price));
                              });
                            },
                            child: Text('Add to Cart'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
