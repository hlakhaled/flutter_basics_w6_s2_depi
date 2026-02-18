import 'package:flutter/material.dart';
import 'package:flutter_basics/blocs/cart_items_cubit/cart_items_cubit.dart';
import 'package:flutter_basics/data/models/food_model.dart';
import 'package:flutter_basics/view/widgets/action_icon.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
              BlocBuilder<CartItemsCubit, CartItemsState>(
                builder: (BuildContext context, CartItemsState state) {
                  return ActionIcon(
                    icon: foodModel.isFavorite
                        ? Icons.favorite
                        : Icons.favorite_border_outlined,
                    onPressed: () {
                      context.read<CartItemsCubit>().favoriteItem(foodModel);
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
