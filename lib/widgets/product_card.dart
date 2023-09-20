import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductCard extends StatelessWidget {
  final String url;
  final String title;
  final String price;
  final double rating;
  final int users;

  ProductCard({
    required this.url,
    required this.title,
    required this.price,
    required this.rating,
    required this.users,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[100],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image(
              image: AssetImage(url),
              height: 110,
            ),
            Text(
              title,
              maxLines: 2,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                price,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: RatingBar.builder(
                    initialRating: rating,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 15,
                    itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  '($users)',
                  style: TextStyle(color: Colors.black38),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
