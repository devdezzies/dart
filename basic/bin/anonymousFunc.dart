var sumOf = (List<int> nums){ // a variable that contains an anonymous function
    var total = 0;
    for (var i in nums){
      total = total + i;
    } 
    return total;
};

var substraction = (int x, int y) => x - y;

void sayHello(String name, String Function(String) filter){
  var filteredName = filter(name);
  print('Howdy! $filteredName');
}

int oddOnly(List<int> nums, int Function(List<int>) filter){
  var total = filter(nums);
  return total;
}

var sayGood = () => print('void function but anonym');

void getHello() => print('Hello world');

void main(){
  print(sumOf([1,2,3,4,5]));
  print(sumOf([1,2,3]));

  print(substraction(3, 4));

  sayHello('Michael', (String name){
      if (name == 'crazy'){
        name = '*****';
      }
      return name;
    });

  print(oddOnly([1,2,3,4,5], (List<int> nums) {
      var sum = 0;
      for (var i in nums){
        if (i % 2 == 1){
          sum = sum + i; 
        }
      }
      return sum;
    }));

  getHello();
  sayGood();
}
