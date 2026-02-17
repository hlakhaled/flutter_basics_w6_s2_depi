import 'package:flutter/material.dart';
import 'package:flutter_basics/controller/cart_items_controller.dart';
import 'package:flutter_basics/data/models/food_model.dart';
import 'package:flutter_basics/view/widgets/custom_button.dart';
import 'package:flutter_basics/view/widgets/food_description_section.dart';
import 'package:flutter_basics/view/widgets/food_image_with_actions.dart';
import 'package:flutter_basics/view/widgets/food_info_list.dart';
import 'package:flutter_basics/view/widgets/food_title_and_price.dart';
import 'package:flutter_basics/view/widgets/ingredients_section.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FoodDetailsView extends StatelessWidget {
  const FoodDetailsView({super.key, required this.foodModel});
  final FoodModel foodModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FoodImageWithActions(foodModel: foodModel),
                SizedBox(height: 20),
                FoodTitleAndPrice(foodModel: foodModel),
                SizedBox(height: 16),
                FoodInfoList(),
                SizedBox(height: 16),
                FoodDescriptionSection(description: foodModel.description),
                SizedBox(height: 20),
                IngredientsSection(),
                InkWell(
                  onTap: () =>
                      context.read<CartItemsController>().addToCart(foodModel),
                  child: CustomButton(text: "Add to Cart"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
