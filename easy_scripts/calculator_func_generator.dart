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
    func(int a, int b){
        switch(param){
            case '+':
                return a+b;
            case '-':
                return a-b;
            case '*':
                return a*b;
            case '/':
                if (b==0){
                    return 'Error';
                }
                return a/b;
        }
    }
    return func;
}