import 'package:flutter/cupertino.dart';
import 'package:sneaker_flutter/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
      name: "Air Jordan",
      price: "236",
      imagePath: "lib/images/air-jordan.avif",
      description: "Step into the Future, Fly with Jordans.",
    ),
    Shoe(
      name: "Lebron 18",
      price: "226",
      imagePath: "lib/images/lebron-18.avif",
      description: "The forward Thinking design of his latest signature shoe.",
    ),
    Shoe(
      name: "KD Treys",
      price: "240",
      imagePath: "lib/images/kd-17.avif",
      description:
          "Step into Greatness: KDTrey, where every stride is a slam dunk of style and performance!",
    ),
    Shoe(
      name: "Lebron 8",
      price: "190",
      imagePath: "lib/images/lebron-8.jpg",
      description:
          "lebron's kicks: Where agility meets style, and every step is a statement.",
    ),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemToCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
