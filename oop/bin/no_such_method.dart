import 'data/repository.dart';

void main(){
  CategoryRepository repository = Repository("Hoodie"); // you can use var (the object name or its parent) instead of dynamic
  // you can't do it using var repository = ...
  // because it's equivalent to Repository repository = Repository(""); it follows the object name
  repository.id('1234');
  repository.name('cars');
  repository.quantity(10000);
  // repository.blablablabla(239174); can't be used because the method isn't registered
}