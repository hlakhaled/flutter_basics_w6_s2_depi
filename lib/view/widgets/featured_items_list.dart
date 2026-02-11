import 'package:flutter/material.dart';
import 'package:flutter_basics/data/constants/featured_foods.dart';
import 'package:flutter_basics/view/widgets/food_card.dart';

class FeaturedItemsList extends StatelessWidget {
  const FeaturedItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: featuredFoods.length,
        padding: const EdgeInsets.symmetric(horizontal: 4),
        separatorBuilder: (_, _) => const SizedBox(width: 16),
        itemBuilder: (context, index) {
          return FoodItemCard(model: featuredFoods[index]);
        },
      ),
    );
  }
}
