import 'package:flutter/material.dart';
import 'package:flutter_basics/core/utils/constants/styles.dart';
import 'package:flutter_basics/data/models/food_model.dart';

class FoodTitleAndPrice extends StatelessWidget {
  const FoodTitleAndPrice({super.key,required this.foodModel});

  final FoodModel foodModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(foodModel.title, style: Styles.style20Bold),
        ),
        Spacer(),
        Text(
          "\$${foodModel.price}",
          style: Styles.style20Bold.copyWith(color: Colors.red[600]),
        ),
      ],
    );
  }
}
