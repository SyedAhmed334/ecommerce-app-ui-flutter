// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final String url;
  final String title;
  final String price;
  ProductDetails({required this.url, required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: Column(
          children: [
            Card(
              child: Image.asset(
                url,
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
                            title,
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
                                      text: price,
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
                                        foregroundColor:
                                            MaterialStatePropertyAll(
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
                              onPressed: () {},
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
      ),
    );
  }
}
