
void main() {

  // Json de una peticion
  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': true,
  };

  // Convertir a un objeto
  // final Hero ironman = Hero(
  //   name: 'Tony Stark', 
  //   power: 'Money', 
  //   isAlive: rawJson['isAlive'] ?? false, // Si es null regresar false
  // );

  // Instancia normal
  // final Hero ironman = Hero(
  //   name: 'Tony Stark', 
  //   power: 'Money', 
  //   isAlive: false
  // );

  // Convertir a un objeto por medio de constructor con nombre
  final Hero ironman = Hero.fromJson(rawJson);

  print(ironman);

}

class Hero {

  String name;
  String power;
  bool isAlive;

  Hero({
    required this.name,
    required this.power,
    required this.isAlive,
  });

  // Constructor con nombre
  Hero.fromJson(Map<String, dynamic> json) 
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? false;
      // isAlive = json['isAlive'] ?? 'No isAlive found';

  @override
  String toString() {
    return 'Name: $name, Power: $power, IsAlive: ${ isAlive ? 'YES' : 'NO' }';
  }

}