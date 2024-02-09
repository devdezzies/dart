import 'data/my_data.dart';

void check(/*var data*/ dynamic data){
  if (data is Data<String>) {
    print('String');
  } else if (data is Data<num>) {
    print('Number: int or double');
  } else {
    print('other');
  }
}

void main(){
  check(Data('Johny'));
  check(Data(120));
  check(Data(10.12));
  check(Data(true));
  //check(true);
}