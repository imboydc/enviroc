import 'dart:ffi';
import 'dart:ui';
import 'package:enviroc/src/config/cores.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:enviroc/src/config/App_data.dart' as appData;

import 'components/category_tile.dart';

class HomeNavegado extends StatefulWidget {
  const HomeNavegado({Key? key}) : super(key: key);

  @override
  State<HomeNavegado> createState() => _HomeNavegadoState();
}

class _HomeNavegadoState extends State<HomeNavegado> {
   List<String> categorias = [
    'Acessórios de Limpeza',
    'Ambientadores',
    'Gama de papel',
    'Limpeza de cozinha',
    'Limpeza WC',
    'Limpeza geral',
    'Auto',
  ];

  String selectedcategory = 'Auto';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App bar

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text.rich(
          TextSpan(
            style: const TextStyle(
              fontSize: 30,
            ),
            children: [
              TextSpan(
                  text: 'EnviroClean', style: TextStyle(color: Colors.black))
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              right: 15,
            ),
            child: GestureDetector(
              onTap: () {},
              child: Badge(
                backgroundColor: Colors.red,
                label: const Text(
                  '2',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.green,
                ),
              ),
            ),
          ),
        ],
      ),
      //pesquisa
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey,
                isDense: true,
                hintText: 'Pesquisar prod...',
                hintStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 21,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    )),
              ),
            ),
          ),
          Container (
            padding: const EdgeInsets.only(left: 25),
            height: 40,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (Dart_CObject, index) {
                return CategoryTile(
                  onPressed: (){
                    setState ((){
                      selectedcategory = appData.categorias[index] as String;
                    });
                  },
                  categorias: appData.categorias[index].toString(),
                  isSelected: appData.categorias[index] == selectedcategory,
                );
              },
              separatorBuilder: (Dart_CObject, index) => const SizedBox(width: 10),
              itemCount: appData.categorias.length,
            ),
          ),
        ],
      ),
    );
  }
}
