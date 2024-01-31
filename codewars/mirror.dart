void main() {
  String diag1Sym(String str){
    List<String> separated = str.split('\n');
    List<String> transformed = [];
    for (var i = 0; i < separated.length; i++){
      var temp = '';
      for (var e in separated){
        temp += e[i]; 
      }
      transformed.add(temp);
    }
    return transformed.join('\n');
  }

  String rot90Clock(String str) {
    var rotated90 = [];
    for (var e in diag1Sym(str).split('\n')){
      var temp = '';
      for (var i = e.length-1; i >= 0; i--){
        temp += e[i];
      }
      rotated90.add(temp);
    }
    return rotated90.join('\n');
  }
  String selfieAndDiag1(String str) {
     List<String> separated = str.split('\n');
     List<String> rotated = diag1Sym(str).split('\n');
     List<String> finalList = []; 
     for (var i = 0; i < separated.length; i++){
        finalList.add('${separated[i]}|${rotated[i]}');
     }
     return finalList.join('\n');
  }
  String oper(String Function(String) fct, String s) {
    return fct(s);
  }
  print(oper(rot90Clock, "rgavce\nvGcEKl\ndChZVW\nxNWgXR\niJBYDO\nSdmEKb"));
  print(oper(selfieAndDiag1, 'NJVGhr\nMObsvw\ntPhCtl\nsoEnhi\nrtQRLK\nzjliWg'));
}

