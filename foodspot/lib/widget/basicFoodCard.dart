import 'package:flutter/material.dart';
import 'package:foodspot/model/food.dart';

class BasicFoodCard extends StatelessWidget {
  const BasicFoodCard({super.key, required this.food});
  final Food food;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
          child: ListTile(
        leading: Image.network(
          width: 50,
          food.imageUrl,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return const Icon(Icons.error); // Fallback icon on error
          },
        ),
        title: Text(food.title),
        subtitle: Text(food.price.toString()),
      )),
    );
  }
}
