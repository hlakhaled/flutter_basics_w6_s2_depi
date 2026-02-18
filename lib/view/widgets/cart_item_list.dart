import 'package:flutter/material.dart';
import 'package:flutter_basics/blocs/cart_items_cubit/cart_items_cubit.dart';
import 'package:flutter_basics/core/utils/constants/styles.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:flutter_basics/view/widgets/cart_item_tile.dart';

class CartItemList extends StatelessWidget {
  const CartItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartItemsCubit, CartItemsState>(
      builder: (BuildContext context, CartItemsState state) {
        if (state is CartItemsInitial) {
          return Center(
            child: Text('Your cart is empty', style: Styles.style12Medium),
          );
        }
        if (state is CartItemsLoaded ) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: context.read<CartItemsCubit>().cartItems.length,
            itemBuilder: (context, index) {
              final item = context.read<CartItemsCubit>().cartItems[index];
              return CartItemTile(cartItemModel: item);
            },
          );
        }
        return Text('No State', style: Styles.style12Medium);
      },
    );
  }
}

//           (
//             BuildContext context,
//             CartItemsState state,
//             Widget? child,
//           ) {
//             if (state is CartItemsLoaded && state.cartItems.isEmpty) {
//               return Center(
//                 child: Text('Your cart is empty', style: Styles.style12Medium),
//               );
//             }
//             return ListView.builder(
//               shrinkWrap: true,
//               itemCount: controller.cartItems.length,
//               itemBuilder: (context, index) {
//                 final item = controller.cartItems[index];
//                 return CartItemTile(cartItemModel: item);
//               },
//             );
//           },
//     );
//   }
// }
