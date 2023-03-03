import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class CategoryWidget extends StatelessWidget {
  final String name;
  final String image;
  CategoryWidget({Key? key, required this.name, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        // make imace rounded
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(image, width: 100, height: 100),
        ),
        Text(
          name,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ],
    ));
  }
}
