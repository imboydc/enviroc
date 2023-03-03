import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class ProductHorizontal extends StatelessWidget {
  final String name;
  final String category;
  final String image;
  final String price;
  final String stars;
  const ProductHorizontal(
      {Key? key,
      required this.name,
      required this.category,
      required this.image,
      required this.price,
      required this.stars})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Uint8List>(
      future: _loadImageWithHeaders(),
      builder: (BuildContext context, AsyncSnapshot<Uint8List> snapshot) {
        if (snapshot.hasData) {
          return _buildProductDetails(snapshot.data!);
        } else {
          return Container();
        }
      },
    );
  }

  Future<Uint8List> _loadImageWithHeaders() async {
    var uri = Uri.parse(image);
    var response = await http.get(uri);
    return response.bodyBytes;
  }

  Widget _buildProductDetails(Uint8List image) {
    return Row(
      children: [
        SizedBox(width: 100, height: 100, child: Image.memory(image)),
        Column(
          children: [
            Text(
              name,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Text(category, style: const TextStyle(fontSize: 10)),
            Row(
              children: const [
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
              ],
            ),
            Text(price.toString()),
            Container(
              height: 1,
              color: Colors.grey,
            ),
          ],
        ),
      ],
    );
  }
}
