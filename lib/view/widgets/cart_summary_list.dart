import 'package:flutter/material.dart';
import 'package:flutter_basics/data/models/cart_summary_model.dart';
import 'package:flutter_basics/view/widgets/cart_summary_tile.dart';

class CartSummaryList extends StatelessWidget {
  const CartSummaryList({super.key});

  final List<CartSummaryModel> cartSummaryItems = const [
    CartSummaryModel(title: "SubTotal", value: "\$25.00"),
    CartSummaryModel(title: "Delivery Fee", value: "\$5.00"),
    CartSummaryModel(title: "Taxes", value: "\$2.50"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return CartSummaryTile(cartSummaryModel: cartSummaryItems[index]);
      },
      itemCount: cartSummaryItems.length,
    );
  }
}
