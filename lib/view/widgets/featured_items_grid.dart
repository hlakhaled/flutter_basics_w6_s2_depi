import 'package:flutter/material.dart';
import 'package:flutter_basics/data/models/food_model.dart';
import 'package:flutter_basics/view/widgets/food_card.dart';

class FeaturedItemsGrid extends StatelessWidget {
  const FeaturedItemsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 0.75,
      ),
      itemCount: FoodModel.featuredFoods.length,
      itemBuilder: (context, index) {
        return FoodItemCard(model: FoodModel.featuredFoods[index]);
      },
    );
  }
}
