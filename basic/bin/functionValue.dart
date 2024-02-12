int sum(List<int> numbers){ // function that returns value
   var total = 0;
   for (var num in numbers){
     total = total + num;
   }     
   return total;
}

void main(){
  print(sum([1,2,3,4,5,6]));
  print(sum([1,2,3]));

}
