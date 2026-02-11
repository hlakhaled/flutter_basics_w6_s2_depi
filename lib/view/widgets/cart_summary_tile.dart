import 'package:flutter/material.dart';
import 'package:flutter_basics/core/utils/constants/styles.dart';
import 'package:flutter_basics/data/models/cart_summary_model.dart';

class CartSummaryTile extends StatelessWidget {
  const CartSummaryTile({super.key, required this.cartSummaryModel});
  final CartSummaryModel cartSummaryModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      minTileHeight: 0,
      minVerticalPadding: 4,

      title: Text(
        cartSummaryModel.title,
        style: Styles.style16Medium.copyWith(color: Colors.grey),
      ),
      trailing: Text(cartSummaryModel.value, style: Styles.style16Medium),
    );
  }
}
