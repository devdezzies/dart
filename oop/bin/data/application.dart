class Application {

  static final String authorName = 'Jonathan Ma';
  static final int authorAge = 20;

}

class Math { // static method is usually used to make helper or utility
  static int sum(int x, int y){
    return x + y;
  }
}

void main(){
 /*
  var app = Application();
  print(app.authorName); static field or method can't be accessed through an instance
  */
  print(Application.authorName); // the field can be accessed without creating an object using the clas Application
  print(Application.authorAge);

  print(Math.sum(2, 3));

}