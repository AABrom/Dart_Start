// if input number is simple or not 

import 'dart:io';
import 'dart:math';

void main(){
    var a = int.parse(stdin.readLineSync() ?? '0');
    simple(a);
}

void simple(n){ 
    if (n<2){
        return print('NO');
    }
	for(var i=2; i<=sqrt(n);i++){
		if(n%i==0){
			return print('NO');
        }
    }    
	return print('YES');
}
