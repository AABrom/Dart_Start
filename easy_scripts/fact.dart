// factorial function

import 'dart:io';

void main(){
    var n = int.parse(stdin.readLineSync() ?? '0');
    print(factorial(n));
}

int factorial(number){
    if (number == 0){
        return 1;
    }
    int fact = 1;
    for (var i = 1; i<=number; i++){
      fact *=i;
    }
    return fact;    
}
