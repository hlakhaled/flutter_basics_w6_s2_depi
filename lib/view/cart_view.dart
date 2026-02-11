import 'package:flutter/material.dart';
import 'package:flutter_basics/core/utils/constants/styles.dart';
import 'package:flutter_basics/view/custom_button.dart';
import 'package:flutter_basics/view/widgets/cart_item_list.dart';
import 'package:flutter_basics/view/widgets/cart_restaurant_item.dart';
import 'package:flutter_basics/view/widgets/cart_summary_section.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart", style: Styles.style20SemiBold),
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(height: 16),
            CartRestaurantItem(),
            SizedBox(height: 16),
            CartItemList(),
            Spacer(),
            CartSummarySection(),
            SizedBox(height: 16),
            CustomButton(text: "Checkout"),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
