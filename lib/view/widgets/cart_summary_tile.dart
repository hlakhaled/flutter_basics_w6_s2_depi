import 'package:flutter/material.dart';
import 'package:flutter_basics/controller/cart_items_controller.dart';
import 'package:flutter_basics/core/utils/constants/styles.dart';
import 'package:provider/provider.dart';

class CartSummaryTile extends StatelessWidget {
  const CartSummaryTile({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<CartItemsController>(context, listen: true);
    return ListTile(
      contentPadding: EdgeInsets.zero,
      minTileHeight: 0,
      minVerticalPadding: 4,

      title: Text(
        title,
        style: Styles.style16Medium.copyWith(color: Colors.grey),
      ),
      trailing: Text(
        title == "SubTotal"
            ? "\$${controller.subTotal.toStringAsFixed(2)}"
            : title == "Delivery Fee"
            ? "\$${controller.deliveryFee.toStringAsFixed(2)}"
            : "\$${controller.taxes.toStringAsFixed(2)}",
        style: Styles.style16Medium,
      ),
    );
  }
}
