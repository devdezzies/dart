class Singleton3 {
  static Singleton3? _instance; 

  // private constructor
  Singleton3._internal() {
    print("internal constructor hit!");
  }

  // the instance will only be created once, inside this class
  factory Singleton3() { // the name should exactly be the same as the class name
    _instance ??= Singleton3._internal();
    return _instance!;
  }
}

void main() {
  Singleton3 singleton1 = Singleton3();
  Singleton3 Singleton2 = Singleton3();
  Singleton3 singleton3 = Singleton3();
  Singleton3 singleton4 = Singleton3();
  // the constructor only will be hit once!
}