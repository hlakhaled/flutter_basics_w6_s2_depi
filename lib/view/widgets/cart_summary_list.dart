import 'package:flutter/material.dart';
import 'package:flutter_basics/view/widgets/cart_summary_tile.dart';

class CartSummaryList extends StatelessWidget {
  const CartSummaryList({super.key});

  final List<String> cartSummaryItems = const [
    "SubTotal",
    "Delivery Fee",
    "Taxes",
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return CartSummaryTile(title: cartSummaryItems[index]);
      },
      itemCount: cartSummaryItems.length,
    );
  }
}
