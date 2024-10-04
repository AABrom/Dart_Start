import 'dart:io';

void main(){
  var a = 0;
  var counter = 0;
  for (var i = 1; i<=10000; i++){
    var el = int.parse(stdin.readLineSync() ?? '0'); 
    if (el == 0){
      print(counter);
      break;
      }
    if (el > a){
          counter = 1;
          a = el;
        }else if (el == a){
          counter++;
        }
  }


}


