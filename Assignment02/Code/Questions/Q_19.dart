void main() {
  Map<String, dynamic> product = {
    "name": "Milk",
    "price": "250 PKR",
    "quantity": 0,
  };

  product["quantity"] > 0
      ? print("${product["name"]} is in Stock")
      : print("${product["name"]} is Out of Stock");
}
