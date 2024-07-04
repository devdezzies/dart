class Singleton1 {
  static Singleton1? _instance; 

  // private constructor
  Singleton1._internal() {
    print("internal constructor hit!");
  }

  // the instance will only be created once, inside this class
  static Singleton1 getInstance() {
    _instance ??= Singleton1._internal(); 
    return _instance!;
  }
}

void main() {
  Singleton1 singleton1 = Singleton1.getInstance();
  Singleton1 singleton2 = Singleton1.getInstance();
  Singleton1 singleton3 = Singleton1.getInstance();
  Singleton1 singleton4 = Singleton1.getInstance();
  // the constructor only will be hit once!
}