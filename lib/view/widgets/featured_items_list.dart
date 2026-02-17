import 'package:flutter/material.dart';
import 'package:flutter_basics/data/models/food_model.dart';
import 'package:flutter_basics/view/widgets/food_card.dart';

class FeaturedItemsList extends StatelessWidget {
  const FeaturedItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: FoodModel.featuredFoods.length,
        padding: const EdgeInsets.symmetric(horizontal: 4),
        separatorBuilder: (_, _) => const SizedBox(width: 16),
        itemBuilder: (context, index) {
          return FoodItemCard(model: FoodModel.featuredFoods[index]);
        },
      ),
    );
  }
}
