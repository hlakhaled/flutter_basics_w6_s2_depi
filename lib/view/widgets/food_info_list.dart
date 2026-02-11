import 'package:flutter/material.dart';
import 'package:flutter_basics/data/models/food_info_model.dart';
import 'package:flutter_basics/view/widgets/food_info_card.dart';

class FoodInfoList extends StatelessWidget {
  const FoodInfoList({super.key});
  final List<FoodInfoModel> foodInfoList = const [
    FoodInfoModel(
      value: '4.8',
      label: '128 reviews',
      icon: Icons.star_rate_rounded,
    ),

    FoodInfoModel(value: '20', label: 'MNS', icon: Icons.schedule_rounded),
    FoodInfoModel(
      value: '350',
      label: 'KCAL',
      icon: Icons.local_fire_department_rounded,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: foodInfoList
          .map(
            (info) => Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: FoodInfoCard(foodInfoModel: info),
              ),
            ),
          )
          .toList(),
    );
  }
}
