import 'package:flutter/material.dart';
import 'package:shoes_shop/models/shoe.dart';

class CarItem extends StatefulWidget {
  Shoe shoe;
  CarItem({super.key, required this.shoe});

  @override
  State<CarItem> createState() => _CarItemState();
}

class _CarItemState extends State<CarItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(widget.shoe.imagePath),
      title: Text(widget.shoe.name),
      subtitle: Text(widget.shoe.description),
    );
  }
}
