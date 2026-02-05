import 'package:flutter/material.dart';
import 'package:flutter_basics/core/utils/constants/styles.dart';
import 'package:flutter_basics/view/widgets/custom_text_field.dart';
import 'package:flutter_basics/view/widgets/featured_item.dart';
import 'package:flutter_basics/view/widgets/special_offer_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Food Delivery', style: Styles.style20Bold),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart, color: Colors.black),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextField(),
              SizedBox(height: 18),
              SpecialOfferList(),
              SizedBox(height: 24),
              FeaturedItem(),
            ],
          ),
        ),
      ),
    );
  }
}
