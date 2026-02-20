import 'package:flutter/material.dart';
import 'package:flutter_basics/blocs/cart_items_cubit/cart_items_cubit.dart';
import 'package:flutter_basics/core/utils/constants/styles.dart';
import 'package:flutter_basics/view/widgets/cart_summary_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartSummarySection extends StatelessWidget {
  const CartSummarySection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartItemsCubit, CartItemsState>(
      builder: (context, state) {
        if (state.cartItems.isEmpty) {
          return const SizedBox.shrink();
        }

        return Column(
          children: [
            Divider(thickness: 0.8, color: Colors.grey[300]),
            CartSummaryList(),
            Divider(thickness: 0.8, color: Colors.grey[300]),
            ListTile(
              contentPadding: EdgeInsets.zero,
              minTileHeight: 0,
              minVerticalPadding: 4,
              title: Text("Total", style: Styles.style18Bold),
              trailing: Text(
                "\$${state.total.toStringAsFixed(2)}",
                style: Styles.style18Bold,
              ),
            ),
          ],
        );
      },
    );
  }
}
