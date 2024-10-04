import 'dart:io';
void main(){
  var a = int.parse(stdin.readLineSync() ?? '0' );
  if (a>0){
    print('Число положительное');
  }else{
    print('Число отрицательное');
  }

  var b = int.parse(stdin.readLineSync() ?? '0');
  var b_is_positive = b>0;
  if (b_is_positive){
    print('Число положительное');
  }

  var c = int.parse(stdin.readLineSync() ?? '0');
  var d = int.parse(stdin.readLineSync() ?? '0');
  print((c>d) ? c : d);
}