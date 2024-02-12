import 'dart:collection';

void main(){
  final nums = <int>{1, 2, 3, 4, 5};
  final exposedNums = UnmodifiableSetView(nums);

  print(exposedNums);

  try {
    exposedNums.add(2);
  } catch (e) {
    print('Error bro! $e');
  }
}