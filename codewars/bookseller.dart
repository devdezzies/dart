void main() {
  String stockSummary(List<String> lstOfArt, lstOf1stLetter) {
    if (lstOfArt.isEmpty || lstOf1stLetter.isEmpty) return '';
    var finalResult = '';
    var listedBooks = <String, int>{};
    Set<String> codeName = {};
    lstOf1stLetter.forEach((e){
      listedBooks[e[0]] = 0;
    });
    lstOfArt.forEach((e){
       var temp = int.parse(lstOfArt[lstOfArt.indexOf(e)].substring(e.indexOf(" "), e.length));
      if (lstOf1stLetter.contains(e[0])) {
        listedBooks.update(
         e[0],
         (val) => val + temp,
         ifAbsent: () => 0,
       );
      }
      codeName.add(e[0]);
    });
    listedBooks.forEach((code, val) {
      if (codeName.length >= lstOf1stLetter.length) {
        if (val != 0 || !codeName.contains(code)) finalResult += '(${code} : ${val}) - ';
      } else {
        finalResult += '(${code} : ${val}) - ';
      }
    });
    return finalResult.substring(0, finalResult.length-3);
  }

  print(stockSummary(["ABAR 200", "CDXE 500", "BKWR 250", "BTSQ 890", "DRTY 600"],
      ["A", "B"]));
  print(stockSummary(['BBAR 150', 'DRTYU 600', 'DRTYMKH 060', 'DRTYMKB 060', 'XILOA 32', 'BKWRKAA 125', 'DRTYMKA 060'],
      ['B', 'F', 'W', 'A']));
  print(stockSummary(['CBART 20', 'CDXEF 50', 'BKWRK 25', 'BTSQZ 89', 'DRTYM 60'],
                   ['A','B', 'C', 'W']));
  print(stockSummary(['BKWRKAB 125', 'XILOB 32', 'ABAR 200', 'ROXANNE 102', 'RHODODE 123', 'UZO 32000', 'ROXANNEC 102'],
                    ['X', 'W', 'F', 'U'] ));

  // create a map of each string of lstOf1stLetter with value of 0
  // map each string of lstOf1stLetter with the value of their sum by character
  // return a conditioned state that corresponds to the size of the lstOf1stLetter
}
