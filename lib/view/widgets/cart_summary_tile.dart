import 'package:flutter/material.dart';
import 'package:flutter_basics/blocs/cart_items_cubit/cart_items_cubit.dart';
import 'package:flutter_basics/core/utils/constants/styles.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartSummaryTile extends StatelessWidget {
  const CartSummaryTile({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartItemsCubit, CartItemsState>(
      builder: (context, state) {
        if (state is! CartItemsLoaded) {
          return const SizedBox.shrink();
        }

        double value;

        switch (title) {
          case "SubTotal":
            value = state.subTotal;
            break;
          case "Delivery Fee":
            value = state.deliveryFee;
            break;
          case "Taxes":
            value = state.taxes;
            break;
          default:
            value = 0;
        }

        return ListTile(
          contentPadding: EdgeInsets.zero,
          minTileHeight: 0,
          minVerticalPadding: 4,
          title: Text(
            title,
            style: Styles.style16Medium.copyWith(color: Colors.grey),
          ),
          trailing: Text(
            "\$${value.toStringAsFixed(2)}",
            style: Styles.style16Medium,
          ),
        );
      },
    );
  }
}
