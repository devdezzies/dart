void main(){
  // {TipeKey, TipeValue}
  Map<String, String> name = {};
  var map2 = <String, String>{};

  Map<int, String> orders = {}; // Map<tipeKey, tipeValue> namaVaribel = {};
  
  orders[1] = 'Burger';
  orders[2] = 'Sandwhich';

  var bookings = Map<String, int>();

  bookings['Novo Amor'] = 2;
  bookings['Mozart'] =  5;

  print(bookings);

  print(bookings['Novo Amor']);

  var thisIsAMap = Map<String, String>();

  thisIsAMap['a'] = 'first';
  thisIsAMap['b'] = 'second';
  thisIsAMap['c'] = 'third';

  print(thisIsAMap);
 
  print(bookings['Novo Amor']);

  var userName = <String, String>{
      'first': 'John',
      'middle': 'Khan',
      'last': 'Amor',

    };

  print(userName);

  name['first'] = 'John';
  name['last'] = 'wick';

  print(orders);

  print(name['first']);
  print('${name['first']} ${name['last']}');
  print(map2);

  name['middle'] = 'keneth';

  print(name);

  name.remove('middle');

  print(name);

  var newName = {
    'first': 'Morgan',
    'last': 'Freeman',
  };

  print(newName);
}
