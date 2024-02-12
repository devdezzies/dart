void main(){
  var nilai = 80;
  String status;

  if (nilai >= 75){
    print('Selamat anda lulus');
  } else {
    print('silakan coba lagi');
  }

  status = nilai >= 75 ? 'Selamat anda lulus' : 'Silakan coba lagi';

  print(status);

  String? guest; // nullable string 

  var name = guest ?? 'default name';
  print(name);

  guest = 'John';
  name = guest ?? 'default name';

  print(name);
}
