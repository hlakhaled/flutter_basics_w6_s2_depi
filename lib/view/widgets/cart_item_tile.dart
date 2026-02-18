import 'package:flutter/material.dart';
import 'package:flutter_basics/blocs/cart_items_cubit/cart_items_cubit.dart';
import 'package:flutter_basics/core/utils/constants/styles.dart';
import 'package:flutter_basics/data/models/food_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartItemTile extends StatelessWidget {
  const CartItemTile({super.key, required this.cartItemModel});

  final FoodModel cartItemModel;

  @override
  Widget build(BuildContext context) {
    final cartController = context.read<CartItemsCubit>();
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          cartItemModel.imagePath,
          width: 60,
          height: 60,
          fit: BoxFit.cover,
        ),
      ),

      title: Text(cartItemModel.title, style: Styles.style16SemiBold),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8),
          Text(
            "Size: ${cartItemModel.size}",
            style: Styles.style12Regular.copyWith(color: Colors.grey[600]),
          ),
          Text(
            "Burger Palace",
            style: Styles.style12Regular.copyWith(color: Colors.red[600]),
          ),
        ],
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,

        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(Icons.remove, size: 18, color: Colors.grey[600]),
              onPressed: () {
                if (cartItemModel.quantity > 1) {
                  cartController.decreaseQuantity(cartItemModel);
                }
              },
            ),
          ),
          SizedBox(width: 16),
          Text("${cartItemModel.quantity}", style: Styles.style16SemiBold),
          SizedBox(width: 16),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(Icons.add, size: 18, color: Colors.grey[600]),
              onPressed: () {
                cartController.increaseQuantity(cartItemModel);
              },
            ),
          ),
        ],
      ),
    );
  }
}
