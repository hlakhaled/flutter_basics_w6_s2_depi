import 'package:flutter/material.dart';
import 'package:flutter_basics/controller/cart_items_controller.dart';
import 'package:flutter_basics/data/models/food_model.dart';
import 'package:flutter_basics/view/widgets/action_icon.dart';
import 'package:provider/provider.dart';

class FoodImageWithActions extends StatelessWidget {
  const FoodImageWithActions({super.key, required this.foodModel});

  final FoodModel foodModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(foodModel.imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 16,
          left: 16,
          right: 16,
          child: Row(
            children: [
              ActionIcon(
                icon: Icons.arrow_back_ios_new_outlined,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const Spacer(),
              Consumer<CartItemsController>(
                builder:
                    (
                      BuildContext context,
                      CartItemsController value,
                      Widget? child,
                    ) {
                      return ActionIcon(
                        icon: foodModel.isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border_outlined,
                        onPressed: () {
                          value.favoriteItem(foodModel);
                        },
                      );
                    },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
