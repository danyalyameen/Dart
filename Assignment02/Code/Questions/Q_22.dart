void main() {
  Map<String, dynamic> shoppingCart = {
    "Samsung S24": 6,
    "MacBook": 4,
    "Headphones": 3,
  };

  shoppingCart.containsKey("MacBook")
      ? print(
          "Product Found. Product Name: MacBook. Quantity : ${shoppingCart["MacBook"]}")
      : print("No Product Found!");
}
