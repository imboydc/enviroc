import 'package:flutter/material.dart';

class orderlistitem extends StatelessWidget {
  int quantidade;
  String name;
  double price;
  orderlistitem(
      {Key? key,
      required this.quantidade,
      required this.name,
      required this.price})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: const Image(
                image: AssetImage('assets/images/icon.jpg'),
                width: 50,
                height: 50),
          ),
          Column(
            children: [
              Text('Produto: ' + name),
              Text('Quantidade: ' + quantidade.toString()),
              Text('Preço:' + price.toString() + 'MT'),
            ],
          ),
          Spacer(),
          Text('10'),
        ],
      ),
    );
  }
}
