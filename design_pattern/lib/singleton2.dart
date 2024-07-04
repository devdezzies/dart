class Singleton2 {
  static Singleton2? _instance; 

  // private constructor
  Singleton2._internal() {
    print("internal constructor hit!");
  }

  // the instance will only be created once, inside this class
  static get instance {
    _instance ??= Singleton2._internal(); 
    return _instance!;
  }
}

void main() {
  Singleton2 singleton1 = Singleton2.instance;
  Singleton2 singleton2 = Singleton2.instance;
  Singleton2 singleton3 = Singleton2.instance;
  Singleton2 singleton4 = Singleton2.instance;
  // the constructor only will be hit once!
}