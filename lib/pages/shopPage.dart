import 'package:flutter/material.dart';
import 'package:shoes_shop/components/shoe_tile.dart';
import 'package:shoes_shop/models/shoe.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
            itemCount: 4,
            itemBuilder: (context, index) {
              Shoe shoe = Shoe(
                name: "Air Jordan",
                price: "2100",
                imagePath: 'lib/images/shoes1.jpg',
                description: "lalala",
              );
              return ShoeTile(shoe: shoe);
            },
          ),
        ),
      ],
    );
  }
}
