void main(){
   void palindromeChecker(String name, String Function(String) checker){
      bool status = checker(name).toLowerCase() == name.toLowerCase();
      if (status){
        print('palindrome, ${checker(name)}');
      } else {
        print('not a palindrome, ${checker(name)}');   
      }
   }

   String checkerName(String name){
      String invertedText = '';
      for (var i = name.length-1; i >= 0; i--){
        invertedText = invertedText + name[i];
      }
      return invertedText;
   }

   palindromeChecker('Step on no pets', checkerName);
}


