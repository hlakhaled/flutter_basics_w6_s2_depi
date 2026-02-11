import 'package:flutter/material.dart';
import 'package:flutter_basics/core/utils/constants/assets.dart';
import 'package:flutter_basics/core/utils/constants/styles.dart';
import 'package:flutter_basics/data/models/ingredient_item_model.dart';
import 'package:flutter_basics/view/widgets/ingredient_item.dart';

class IngredientsSection extends StatelessWidget {
  const IngredientsSection({super.key});

  final List<IngredientItemModel> ingredients = const [
    IngredientItemModel(name: "Cheese", image: Assets.assetsImagesCheese),
    IngredientItemModel(name: "Pepper", image: Assets.assetsImagesBellPepper),
    IngredientItemModel(name: "Tomato", image: Assets.assetsImagesTomato),
    IngredientItemModel(name: "Ketchup", image: Assets.assetsImagesKetchup),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Ingredients", style: Styles.style20Bold),
        const SizedBox(height: 8),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 4,
          ),
          itemBuilder: (context, index) {
            return IngredientItem(ingredient: ingredients[index]);
          },
          itemCount: ingredients.length,
        ),
      ],
    );
  }
}
