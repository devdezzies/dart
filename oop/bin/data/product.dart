class Product {
  String name;
  int amount;
  String _productID;
  // final String _productID; it's recommended to make it final

  String? _getProductID() => _productID; // it's also secured

  Product(this.name, this.amount, this._productID) {
    print('You have added $name $amount with product ID $_productID');
  }
}

void main(){
  var oneProduct = Product("Ginger", 10, '10923');
  print(oneProduct.name);
  print(oneProduct.amount);
  print(oneProduct._productID); // it only can be accessed in this file

  oneProduct._productID = '102923';
  print(oneProduct._productID);
  print(oneProduct._getProductID());
}

