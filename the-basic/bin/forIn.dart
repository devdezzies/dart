void main(){
  var daftarNama = <String>['John', 'Keen', 'Keith', 'Sivan'];

  for (var i = 0; i <= daftarNama.length - 1; i++) {
    print(daftarNama[i]);
  }

  for (var value in daftarNama) {
    print('it works the same $value');
  }

  // it also works for set  
  var nameSet = <String>{'e1', 'e2', 'e3'};

  for (var name in nameSet){
    print(name);
  }
}
