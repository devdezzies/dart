void main(){
  var i = 1; 
  
  for (var initial = i; initial <= 100; initial++){
    if (initial % 2 == 0){ // this condition will be skipped to the post-statement
      continue;
    }
    print('perulangan ke-$initial');
  }
}
