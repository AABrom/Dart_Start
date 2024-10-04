import 'dart:io';

void main(){
    var a = int.parse(stdin.readLineSync() ?? '0');
    var b = int.parse(stdin.readLineSync() ?? '0');
    var c = int.parse(stdin.readLineSync() ?? '0');
    
    area(a,b,c) => 2*(a*b + b*c + a*c);
    print(area(a,b,c)); 
}
