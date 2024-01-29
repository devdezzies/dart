class Addition {
  int initial = 0;

  Addition operator +(Addition param){
    var result = Addition();
    result.initial = param.initial + initial;
    return result;
   } 
}

void main(){
  
  var firstAddition = Addition();
  firstAddition.initial = 10;

  var secondAddition = Addition();
  secondAddition.initial = 10;

  var third = firstAddition + secondAddition;
  print(third.initial);

}
