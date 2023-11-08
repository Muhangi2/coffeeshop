import "package:my_flutter_app/models/drink.dart";

class TeaShop {
  //list of drinks for sale
  final List<Drink> _shop = [
    Drink(
        name: "BusheraMilk",
        price: "4004",
        imagepath: "lib/images/busheramilk.jpeg")
  ];
  //list of drinks in user's cart
  final List<Drink> _cart = [];

  //get drinks from the shop
  List<Drink> get shop => _shop;

  //get drinks from  the user_cart
  List<Drink> get car => _cart;



  
  //add to user_cart
  void addToCart(Drink drink) {
    _cart.add(drink);
  }

  //remove from the cart
  void removeFromCart(Drink drink) {
    _cart.remove(drink);
  }
}
