library dart_packages_library;

export 'src/say_hello.dart'; // exposes the whole code
export 'src/customer.dart' show Customer, Product, Category; // the word "show" will only expose mentioned part (class, function, etc)

