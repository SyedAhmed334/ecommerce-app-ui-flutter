// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
            Text(
              'Products',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 5),
              children: [
                Card(
                  child: Column(
                    children: [],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
