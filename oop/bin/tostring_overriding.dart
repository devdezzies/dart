class Product {
  String? name;
  int? _quantity;

  int? _getQuantity(){
    return _quantity;
  }

  @override
  String toString(){
    return 'The product name is $name with quantity of $_quantity';
  }
}

void main(){
  var milkProduct = Product()
      ..name = 'Bebelac'
      .._quantity = 10;
  print(milkProduct.toString()); // these forms act the exactly the same
  print(milkProduct); // --
}