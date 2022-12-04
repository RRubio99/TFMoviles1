import 'package:flutter/material.dart';

import 'food.dart';

class FoodItem extends StatelessWidget {
  const FoodItem({super.key, required this.item});

  final Comida item;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 140,
        child: Card(
          elevation: 5,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                    child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(this.item.nombre_comida!,
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("id:${this.item.id}"),
                            Text("calorias:${this.item.calorias}"),
                          ],
                        )))
              ]),
        ));
  }
}
