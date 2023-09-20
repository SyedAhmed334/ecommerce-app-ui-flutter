// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
            child: GridView(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 5),
              children: [
                Card(
                  color: Colors.grey[100],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/images/earbuds1.png'),
                        height: 100,
                      ),
                      Text('Product 1'),
                    ],
                  ),
                ),
                Card(
                  color: Colors.grey[100],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/images/earbuds2.png'),
                        height: 100,
                      ),
                      Text('Product 2'),
                    ],
                  ),
                ),
                Card(
                  color: Colors.grey[100],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/images/earbuds3.png'),
                        height: 100,
                      ),
                      Text('Product 3'),
                    ],
                  ),
                ),
                Card(
                  color: Colors.grey[100],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/images/earbuds4.png'),
                        height: 100,
                      ),
                      Text('Product 4'),
                    ],
                  ),
                ),
                Card(
                  color: Colors.grey[100],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/images/earbuds5.png'),
                        height: 100,
                      ),
                      Text('Product 5'),
                    ],
                  ),
                ),
                Card(
                  color: Colors.grey[100],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/images/earbuds7.png'),
                        height: 100,
                      ),
                      Text('Product 6'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
