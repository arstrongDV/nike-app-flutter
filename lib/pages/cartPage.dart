import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_shop/components/car_item.dart';
import 'package:shoes_shop/models/cart.dart';
import 'package:shoes_shop/models/shoe.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            Text(
              'My Cart',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),

            const SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                itemCount: value.getUserList().length,
                itemBuilder: (context, index) {
                  Shoe shoe = value.getUserList()[index];

                  return CarItem(shoe: shoe);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
