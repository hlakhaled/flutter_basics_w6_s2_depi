import 'package:flutter/material.dart';
import 'package:flutter_basics/view/widgets/action_icon.dart';

class FoodImageWithActions extends StatefulWidget {
  const FoodImageWithActions({super.key, required this.imgPath});

  final String imgPath;

  @override
  State<FoodImageWithActions> createState() => _FoodImageWithActionsState();
}

class _FoodImageWithActionsState extends State<FoodImageWithActions> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(widget.imgPath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 16,
          left: 16,
          right: 16,
          child: Row(
            children: [
              ActionIcon(
                icon: Icons.arrow_back_ios_new_outlined,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const Spacer(),
              ActionIcon(
                icon: isFavorite
                    ? Icons.favorite
                    : Icons.favorite_border_outlined,
                onPressed: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
