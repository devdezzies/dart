import 'data/category.dart';

class ProductDetails extends Category {
  ProductDetails(String productName, String productID)
      : super(productName, productID) {
    // will be filled with the parent body constructor -- this will be executed first
    print('Hi! you just searched for a product named $name with id $id');
  }
}

void main() {
  var skinnyJeans = Category('Jeans', '1012');
  print(skinnyJeans.name);
  print(skinnyJeans.id);

  var detailsOfJeans = ProductDetails('Doughnut Pillow', '1829');
  print(detailsOfJeans.name);
  print(detailsOfJeans.id);
}
