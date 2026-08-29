import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_shop/components/shoe_tile.dart';
import 'package:shoes_shop/models/cart.dart';
import 'package:shoes_shop/models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItem(shoe);

    // alert the user, shoe successfully added
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Successfully Added'),
        content: Text("Check your cart"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Search", style: TextStyle(color: Colors.grey)),
                Icon(Icons.search, color: Colors.grey),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(vertical: 25.0),
            child: Text(
              "Everyone flies... some fly longer then others",
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  "Hot Picks",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          Expanded(
            child: ListView.builder(
              itemCount: value.shoeShop.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Shoe shoe = value.getShoesList()[index];

                return ShoeTile(shoe: shoe, onTap: () => addShoeToCart(shoe));
              },
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: 100.0, left: 25.0, right: 25.0),
            child: Divider(color: Colors.grey[300]),
          ),
        ],
      ),
    );
  }
}
