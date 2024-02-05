import 'data/rectangle.dart';

void main(){
  var rectangle = Rectangle();
  // print(rectangle._width); won't work, instead use the getter
  print(rectangle.getWidth);

  rectangle.width = 20;
  print(rectangle.getWidth);

  print(rectangle.getHeight);
  rectangle.height = 30;

  print(rectangle.getHeight);
}