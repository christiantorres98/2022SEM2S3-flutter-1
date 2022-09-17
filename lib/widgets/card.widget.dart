import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newnoticias/models/articulo.model.dart';
import 'package:newnoticias/pages/detalle.page.dart';

class CardWidget extends StatelessWidget {
  CardWidget({super.key, required this.articulo});

  ArticuloModel articulo;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetallePage(articulo: articulo)));
      },
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.blue,
            height: 100,
            child: Column(
              children: [Text(articulo.author), Text(articulo.title)],
            ),
          )),
    );
  }
}
