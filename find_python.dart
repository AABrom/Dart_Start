/* 
input: number of strings(n), n strings 
output: if strings contain 'Python' or 'python' or not
*/

import 'dart:io';

void main(){
  var n = int.parse(stdin.readLineSync() ?? '0');
  String a = '' ;
  for (var i = 1; i<=n; i++){
    a+= stdin.readLineSync() ?? '0';
  }
  print((a.contains('python') || a.contains('Python')) ?  'Yes' : 'No');
}
