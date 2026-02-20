import 'package:flutter/material.dart';
import 'package:flutter_basics/blocs/cart_items_cubit/cart_items_cubit.dart';
import 'package:flutter_basics/core/utils/constants/styles.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_basics/view/widgets/cart_item_tile.dart';

class CartItemList extends StatelessWidget {
  const CartItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartItemsCubit, CartItemsState>(
      builder: (BuildContext context, CartItemsState state) {
        if (state.cartItems.isNotEmpty) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: state.cartItems.length,
            itemBuilder: (context, index) {
              final item = state.cartItems[index];
              return CartItemTile(cartItemModel: item);
            },
          );
        }
        return Text('Your cart is empty', style: Styles.style12Medium);
      },
    );
  }
}
