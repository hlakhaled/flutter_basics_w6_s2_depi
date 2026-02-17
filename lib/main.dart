import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_basics/controller/cart_items_controller.dart';
import 'package:flutter_basics/view/widgets/home_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartItemsController(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Poppins',
          scaffoldBackgroundColor: Colors.white,
        ),
        home: const HomeLayout(),
      ),
    );
  }
}
