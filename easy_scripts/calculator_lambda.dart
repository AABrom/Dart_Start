/*
input: String arithmetic operator '+', '-', '*', '/'
output: result of operation on two numbers
*/

import 'dart:io';

void main() {
    var op = stdin.readLineSync();
    var a = int.parse(stdin.readLineSync() ?? '0');
    var b = int.parse(stdin.readLineSync() ?? '0');
    var f = make_f(op);
    if (f is Function) 
       print(f(a, b));
    else
      print("is not a Function!");
}

make_f(param){
        switch(param){
            case '+': 
                return (int a, int b) => a+b;
            case '-':
                return (int a, int b) => a-b;
            case '*':
                return (int a, int b) => a*b;
            case '/':
                return (int a, int b) => b==0 ? 'Error' : a/b;
        }
    }
