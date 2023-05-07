
void main() {

  // final Hero wolverine = new Hero(name: 'Logan', power: 'Regeneracion');
  final Hero wolverine = new Hero(name: 'Logan');

  // print('Hero: $wolverine'); //Hero: Instance of 'Hero'
  print('Hero: ${ wolverine.toString() }');
  print('Nombre: ${ wolverine.name }');
  print('Pöder: ${ wolverine.power }');

}

class Hero {

  String name;
  String power;

  // this. es opcional 
  // No funciona del todo
  // Hero(String pName, String pPower) {
  //   this.name = pName;
  //   this.power = pPower;
  // }

  // Hero(String pName, String pPower)
  //     : name = pName,
  //       power = pPower;

  // Hero(this.name, this.power);

  Hero({ 
    required this.name, 
    this.power = 'Sin poder'
  });

  // Sobreescribiendo el comportamiento de toString()
  @override
  String toString() {
    return 'Name: $name, Power: $power';
  }

}