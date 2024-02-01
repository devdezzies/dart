void main(){
  int dblLinear(int n){
    List<int> sequence = [1];
    for (var i = 0; i < n/2; i++){
       sequence.add(2*sequence[i] + 1);
       sequence.add(3*sequence[i] + 1);
       sequence.sort();
       //if(sequence.length > n) break;
     }
     print(sequence);
    return sequence[n-1];
  }
  print(dblLinear(20));
}
