import 'package:flutter/material.dart';
import 'package:flutter_basics/core/utils/constants/styles.dart';

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
        "2 Items",
        style: Styles.style12Regular.copyWith(color: Colors.grey[600]),
      ),
    );
  }
}
