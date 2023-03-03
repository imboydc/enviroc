import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductSquare extends StatefulWidget {
  final String name;
  final String category;
  final String image;
  final String price;
  final String stars;
  ProductSquare(
      {Key? key,
      required this.name,
      required this.category,
      required this.image,
      required this.price,
      required this.stars})
      : super(key: key);

  @override
  _ProductSquareState createState() => _ProductSquareState();
}

class _ProductSquareState extends State<ProductSquare> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Image.network(widget.image, width: 100, height: 100),
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
    ));
  }
}
