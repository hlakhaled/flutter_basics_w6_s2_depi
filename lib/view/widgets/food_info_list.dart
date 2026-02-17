import 'package:flutter/material.dart';
import 'package:flutter_basics/data/models/card_info_model.dart';
import 'package:flutter_basics/view/widgets/food_info_card.dart';

class FoodInfoList extends StatelessWidget {
  const FoodInfoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: CardInfoModel.cardInfoList
          .map(
            (info) => Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: FoodInfoCard(cardInfoModel: info),
              ),
            ),
          )
          .toList(),
    );
  }
}
