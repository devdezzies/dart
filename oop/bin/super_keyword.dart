class Shape {

  int getCorner() {
      return 0;
  }

}

class Rectangle extends Shape {
  @override
  int getCorner(){
    return 4;
  }

  int getParentCorner(){
    return super.getCorner(); // unoverridden method from parent (Shape)
  }

}

void main(){
  var rectangle1 = Rectangle();
  print(rectangle1.getCorner()); // take a value from overridden method
  print(rectangle1.getParentCorner()); // take the value of its parent property
}
