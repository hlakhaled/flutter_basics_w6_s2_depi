import 'package:flutter/material.dart';
import 'package:flutter_basics/core/utils/constants/styles.dart';
import 'package:flutter_basics/view/widgets/cart_summary_list.dart';

class CartSummarySection extends StatelessWidget {
  const CartSummarySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(thickness: 0.8, color: Colors.grey[300]),
        const CartSummaryList(),
        Divider(thickness: 0.8, color: Colors.grey[300]),
        ListTile(
          contentPadding: EdgeInsets.zero,
          minTileHeight: 0,
          minVerticalPadding: 4,
          title: Text("Total", style: Styles.style18Bold),
          trailing: Text("\$32.50", style: Styles.style18Bold),
        ),
      ],
    );
  }
}
