import 'package:flutter/material.dart';
import 'food.dart';
import 'foodItem.dart';

class FoodList extends StatelessWidget {
  final List<Comida> items;

  const FoodList({required Key key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return FoodItem(item: items[index]);
      },
    );
  }
}
