import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductSmall extends StatefulWidget {
  final String name;
  final String category;
  final String image;
  final String price;
  final String stars;
  ProductSmall(
      {Key? key,
      required this.name,
      required this.category,
      required this.image,
      required this.price,
      required this.stars})
      : super(key: key);

  @override
  _ProductSmallState createState() => _ProductSmallState();
}

class _ProductSmallState extends State<ProductSmall> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        Image.network(widget.image, width: 50, height: 50),
        Column(
          children: [
            Text(
              widget.name,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Text(widget.category, style: TextStyle(fontSize: 10)),
            Row(
              children: const [
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
              ],
            ),
            Text(widget.price.toString()),
            Container(
              height: 1,
              color: Colors.grey,
            ),
          ],
        ),
      ],
    ));
  }
}
