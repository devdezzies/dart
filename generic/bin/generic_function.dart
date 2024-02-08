import 'helper/array_helper.dart';

String depends<T>(List<T> arr){
  return arr.join('');
}

void main(){
  print(ArrayHelper.getLength([1, 2, 3, 4, 5]));
  print(ArrayHelper.getLength(['hello', 'world']));
  print(ArrayHelper.getLength([[1], [2],[3]]));

  print(ArrayHelper.arrayJoin<String, String>(['h', 'e', 'y'], 'Jonathan'));
  print(ArrayHelper.arrayJoin<int, bool>([1, 2, 3], true));
  print(depends<String>(['Hello', 'World']));
}