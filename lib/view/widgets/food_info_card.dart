import 'package:flutter/material.dart';
import 'package:flutter_basics/core/utils/constants/styles.dart';
import 'package:flutter_basics/data/models/food_info_model.dart';

class FoodInfoCard extends StatelessWidget {
  const FoodInfoCard({super.key, required this.foodInfoModel});
  final FoodInfoModel foodInfoModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade200),

        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Icon(
            foodInfoModel.icon,
            color: foodInfoModel.icon == Icons.star_rate_rounded
                ? Colors.yellow[600]
                : Colors.red[600],
            size: 24,
          ),
          SizedBox(height: 8),
          Text(foodInfoModel.value, style: Styles.style16Bold),
          SizedBox(height: 4),
          Text(foodInfoModel.label, style: Styles.style10SemiBold),
        ],
      ),
    );
  }
}
