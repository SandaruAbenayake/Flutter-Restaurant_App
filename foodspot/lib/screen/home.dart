import 'package:flutter/material.dart';
import 'package:foodspot/model/food.dart';
import 'package:foodspot/widget/basicFoodCard.dart';
import 'package:foodspot/widget/basicText.dart';
import 'package:foodspot/widget/basicTextFiled.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectIndex = 1;
  final TextEditingController _serachController = TextEditingController();

  final List<Food> foodItems = [
    Food(
      title: "Margherita Pizza",
      price: 8.99,
      description: "A delicious cheese pizza with fresh basil.",
      imageUrl:
          "https://www.imghippo.com/i/jj3RR1727245008.png", // Replace with actual image URL
    ),
    Food(
      title: "Cheeseburger",
      price: 5.99,
      description: "Juicy beef burger with cheese.",
      imageUrl:
          "https://www.imghippo.com/i/jj3RR1727245008.png", // Replace with actual image URL
    ),
    Food(
      title: "Caesar Salad",
      price: 7.49,
      description: "Fresh salad with Caesar dressing.",
      imageUrl:
          "https://www.imghippo.com/i/jj3RR1727245008.png", // Replace with actual image URL
    ),
    Food(
      title: "Pasta Primavera",
      price: 9.99,
      description: "Pasta with mixed vegetables.",
      imageUrl: "/assets/background.jpg", // Replace with actual image URL
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const BasicText(
              lable: "Special food for you!",
              size: 25,
              weight: FontWeight.w600),
          BasicTextFiled(
            hint: "Search",
            controller: _serachController,
            isPasswordFiled: false,
            prefixIcon: Icons.search,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: foodItems.length,
                itemBuilder: (context, index) {
                  return BasicFoodCard(food: foodItems[index]);
                }),
          ),
        ],
      ),
    );
  }
}
