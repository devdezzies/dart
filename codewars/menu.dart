class Menu {
  String getOrder(String input) {
    List<String> menuList = [
      'burger',
      'fries',
      'chicken',
      'pizza',
      'sandwich',
      'onionrings',
      'milkshake',
      'coke'
    ];
    List<String> orders = [];
    List<int> counter = [0, 0, 0, 0, 0, 0, 0, 0];
    List<String> ordered = [];
    var text = input;
    while (text.isNotEmpty) {
      var temp = '';
      var i = 0;
      while (text.isNotEmpty) {
        temp += text[i];
        if (menuList.contains(temp)) {
          orders.add(temp);
          text = text.substring(temp.length);
          break;
        }
        i++;
      }
    }
    for (var e in orders) {
      if (e == 'burger') {
        counter[0]++;
      } else if (e == 'fries') {
        counter[1]++;
      } else if (e == 'chicken') {
        counter[2]++;
      } else if (e == 'pizza') {
        counter[3]++;
      } else if (e == 'sandwich') {
        counter[4]++;
      } else if (e == 'onionrings') {
        counter[5]++;
      } else if (e == 'milkshake') {
        counter[6]++;
      } else if (e == 'coke') {
        counter[7]++;
      }
    }
    for (var e in menuList) {
      //if (counter[menuList.indexOf(e)] == 0) continue;
      for (var i = counter[menuList.indexOf(e)]; i >= 1; i--) {
        ordered.add(e[0].toUpperCase() + e.substring(1));
      }
    }
    return ordered.join(' ');
  }
}

void main() {
  var menuSolution = Menu();
  print(menuSolution
      .getOrder('pizzachickenfriesburgercokemilkshakefriessandwich'));
  print(menuSolution.getOrder(
      'milkshakepizzachickenfriescokeburgerpizzasandwichmilkshakepizza'));
  print(menuSolution.getOrder('cokecokefriescokefriesfries'));
}
