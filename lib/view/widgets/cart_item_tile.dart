import 'package:flutter/material.dart';

import 'package:flutter_basics/core/utils/constants/styles.dart';
import 'package:flutter_basics/data/models/cart_item_model.dart';

class CartItemTile extends StatefulWidget {
  const CartItemTile({super.key, required this.cartItemModel});

  final CartItemModel cartItemModel;

  @override
  State<CartItemTile> createState() => _CartItemTileState();
}

class _CartItemTileState extends State<CartItemTile> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          widget.cartItemModel.imageUrl,
          width: 60,
          height: 60,
          fit: BoxFit.cover,
        ),
      ),

      title: Text(widget.cartItemModel.title, style: Styles.style16SemiBold),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8),
          Text(
            "Size: ${widget.cartItemModel.size}",
            style: Styles.style12Regular.copyWith(color: Colors.grey[600]),
          ),
          Text(
            widget.cartItemModel.description,
            style: Styles.style12Regular.copyWith(color: Colors.red[600]),
          ),
        ],
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,

        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(Icons.remove, size: 18, color: Colors.grey[600]),
              onPressed: () {
                setState(() {
                  if (quantity > 1) {
                    quantity--;
                  }
                });
              },
            ),
          ),
          SizedBox(width: 16),
          Text("$quantity", style: Styles.style16SemiBold),
          SizedBox(width: 16),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(Icons.add, size: 18, color: Colors.grey[600]),
              onPressed: () {
                setState(() {
                  quantity++;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
