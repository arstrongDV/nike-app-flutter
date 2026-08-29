import 'package:flutter/material.dart';
import 'package:shoes_shop/models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Air Max Pulse',
      price: '\$120',
      imagePath: 'lib/images/shoes1.jpg',
      description: 'A comfortable everyday sneaker with responsive cushioning.',
    ),
    Shoe(
      name: 'Cloud Runner',
      price: '\$95',
      imagePath: 'lib/images/shoes2.jpg',
      description:
          'Lightweight running shoe built for speed and breathability.',
    ),
    Shoe(
      name: 'Urban Street',
      price: '\$110',
      imagePath: 'lib/images/shoes3.jpg',
      description: 'Classic street-style sneaker with a durable rubber sole.',
    ),
    Shoe(
      name: 'Trail Blazer',
      price: '\$135',
      imagePath: 'lib/images/shoes4.jpg',
      description:
          'Rugged outdoor shoe designed for grip and stability on any terrain.',
    ),
  ];

  // list of items in user cart
  List<Shoe> useCart = [];

  //get list of shoes for sale
  List<Shoe> getShoesList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserList() {
    return useCart;
  }

  // add items to cart
  void addItem(Shoe shoe) {
    useCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItem(Shoe shoe) {
    useCart.remove(shoe);
    notifyListeners();
  }
}
