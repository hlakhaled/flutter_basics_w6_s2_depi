import 'package:flutter/material.dart';
import 'package:flutter_basics/core/utils/constants/styles.dart';
import 'package:flutter_basics/view/widgets/featured_items_grid.dart';
import 'package:flutter_basics/view/widgets/featured_items_list.dart';
import 'package:flutter_basics/view/widgets/toggle_view_switch.dart';

class FeaturedItem extends StatefulWidget {
  const FeaturedItem({super.key});

  @override
  State<FeaturedItem> createState() => _FeaturedItemState();
}

class _FeaturedItemState extends State<FeaturedItem> {
  bool isGridView = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Featured Item", style: Styles.style20SemiBold),
        const SizedBox(height: 18),

        ToggleViewSwitch(
          isGridView: isGridView,
          onChanged: (value) {
            setState(() {
              isGridView = value;
            });
          },
        ),

        const SizedBox(height: 16),

        isGridView ? const FeaturedItemsGrid() : const FeaturedItemsList(),
      ],
    );
  }
}
