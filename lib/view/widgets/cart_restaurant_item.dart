import 'package:flutter/material.dart';
import 'package:flutter_basics/controller/cart_items_controller.dart';
import 'package:flutter_basics/core/utils/constants/styles.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartRestaurantItem extends StatelessWidget {
  const CartRestaurantItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        padding: EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: Colors.orange[50],
          borderRadius: BorderRadius.circular(30),
        ),
        child: Icon(Icons.fastfood_rounded, size: 30, color: Colors.brown[300]),
      ),
      title: Text("Burger Palace", style: Styles.style16SemiBold),
      subtitle: Text(
        "${context.read<CartItemsController>().cartItems.length} Items",
        style: Styles.style12Regular.copyWith(color: Colors.grey[600]),
      ),
    );
  }
}
