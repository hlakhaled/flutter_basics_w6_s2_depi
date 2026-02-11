import 'package:flutter/material.dart';
import 'package:flutter_basics/core/utils/constants/assets.dart';
import 'package:flutter_basics/data/models/cart_item_model.dart';
import 'package:flutter_basics/view/widgets/cart_item_tile.dart';

class CartItemList extends StatelessWidget {
  const CartItemList({super.key});

  final List<CartItemModel> cartItems = const [
    CartItemModel(
      title: "Cheese Burger",
      size: "Large",
      description: "Burger Palace",
      imageUrl: Assets.assetsImagesImag11,
    ),
    CartItemModel(
      title: "Veggie Pizza",
      size: "Medium",
      description: "Burger Palace",
      imageUrl: Assets.assetsImagesImg14,
    ),
    CartItemModel(
      title: "Caesar Salad",
      size: "Small",
      description: "Burger Palace",
      imageUrl: Assets.assetsImagesImg10,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,

      itemCount: cartItems.length,
      itemBuilder: (context, index) {
        final item = cartItems[index];
        return CartItemTile(cartItemModel: item);
      },
    );
  }
}
