import 'package:flutter/material.dart';
import 'package:flutter_basics/controller/cart_items_controller.dart';
import 'package:flutter_basics/core/utils/constants/styles.dart';
import 'package:provider/provider.dart';
import 'package:flutter_basics/view/widgets/cart_item_tile.dart';

class CartItemList extends StatelessWidget {
  const CartItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartItemsController>(
      builder:
          (
            BuildContext context,
            CartItemsController controller,
            Widget? child,
          ) {
            if (controller.cartItems.isEmpty) {
              return Center(
                child: Text('Your cart is empty', style: Styles.style12Medium),
              );
            }
            return ListView.builder(
              shrinkWrap: true,
              itemCount: controller.cartItems.length,
              itemBuilder: (context, index) {
                final item = controller.cartItems[index];
                return CartItemTile(cartItemModel: item);
              },
            );
          },
    );
  }
}
