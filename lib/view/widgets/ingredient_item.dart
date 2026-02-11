import 'package:flutter/material.dart';
import 'package:flutter_basics/core/utils/constants/styles.dart';
import 'package:flutter_basics/data/models/ingredient_item_model.dart';
import 'package:flutter_svg/svg.dart';

class IngredientItem extends StatelessWidget {
  final IngredientItemModel ingredient;

  const IngredientItem({super.key, required this.ingredient});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          SvgPicture.asset(ingredient.image, width: 18, height: 18),
          const SizedBox(width: 10),
          Text(
            ingredient.name,
            style: Styles.style12Medium.copyWith(color: Colors.black45),
          ),
        ],
      ),
    );
  }
}
