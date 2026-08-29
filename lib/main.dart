import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_shop/models/cart.dart';
import 'package:shoes_shop/pages/introPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(debugShowCheckedModeBanner: false, home: IntroPage());
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
    );
  }
}
