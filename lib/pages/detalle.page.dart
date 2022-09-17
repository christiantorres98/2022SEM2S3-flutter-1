import 'package:flutter/material.dart';
import 'package:newnoticias/models/articulo.model.dart';

class DetallePage extends StatelessWidget {
  DetallePage({super.key, required this.articulo});
  ArticuloModel articulo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(articulo.author ?? "Articulo autor"),
      ),
      body: Column(children: [
        Container(
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 15),
                child: Text(articulo.title ?? "Sin titulo",
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              )
            ],
          ),
        ),
        Expanded(
            child: Container(
          child: Text(articulo.content),
        ))
      ]),
    );
  }
}
