class Rectangle {
  int _width = 0;
  int _height = 10;

  // int get getWidth { the getter (the only tool to get the field's value from outside the original file
  //   return _width;
  // }

  // we can use expression body when the getter only take the field's value

  int get getWidth => _width;

  set width(int value) { // the setter (tool to modify the field's value from outside the original file
    _width = value;
  }

  int get getHeight {
    // in order to make setter and getter effective and useful, the best practice is that sometimes setter and getter
    // is equipped with some validations logic
    return _height;
  }

  // set height(int value){
  //   _height = value;
  // }

  set height(int value) => _height = value;
}