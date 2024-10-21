// конспект по ООП

void main() {
  Cat cat1 = new Cat('Vasya', 2, 3);
  Cat cat2 = new Cat.standart();
  Cat cat3 = new Cat.age(7);
  
  
  Cat cat4 = new Cat.standart()
    ..name = 'Barsik'
    ..age = 5
    ..weight = 4.2
    ..show_info();

  cat4._color = 'grey'; // должна быть инкапсуляция, но в дарт не работает

  RussianCyan cat5 = new RussianCyan('Blue', 4, 6.0);
  cat5.show_info();

  cat1.voice();
  cat5.voice();

  print('');
  var sp = [cat1, cat2, cat3, cat4, cat5];
  for (Cat cat in sp)
    cat.show_info();

  // полиморфизм
  print('');
  for (Cat cat in sp){
    cat.show_info();
    cat.voice();
  } 
}

class GreyColorAnimal{
  void show_color(){
    print('grey_color');
  }
  
}

class Cat{
  String name = 'undefined';
  int age = 5;
  double weight = 3.5;
  String _color = 'no color'; // должна быть инкапсуляция, но в дарт не работает

  Cat.standart(){}

  // Вызывает сначала simple, который уже вызывает общий конструктор
  Cat.age(int age): this.simple('undefined', age);
  

  // использует конструктор для вызова следующего к-ра 
  Cat.simple(String name, int age): this(name, age, 3.5);
  
  /*
  избыточный способ создания конструктора с переменными
  Cat(String name, int age, double weight){
    this.name = name;
    this.age = age;
    this.weight = weight;
  }
  */
  
  //корретный способ создания общего конструктора с переменными
  Cat(this.name, this.age, this.weight);

  void show_info(){
      print('Name: $name, age: $age, weight: $weight');


  }

  void voice(){
    print('Meow');
  }

}

// нет множественного наследования: наследует Cat и реализует логику интерфейса GrayColorAnimal
// Вы не можете использовать какой-либо класс в качестве миксина (пометь mixin, используй with), если он явно не помечен ключевым словом «mixin»
class RussianCyan extends Cat implements GreyColorAnimal{
  /* не наследует стандартный zero конструктор, надо переопределить:
  создаем класс с переменными подкласса, которые примут значения из суперкласса  
  */
  RussianCyan(name, age, weight): super(name, age, weight);

  void voice(){
    print('Meow Meow Meow');
  }
  void show_color(){
    print('grey_color');
    
  }

}

/* абстрактный класс: нельзя создать экземпляр
это принцип ООП, согласно которому при проектировании классов и создании объектов необходимо выделять только главные свойства сущности, и отбрасывать второстепенные
*/

/* абстрактный метод: без тела, нужен для наследования методов, которые выполняют подклассы, но каждый по-своему
*/