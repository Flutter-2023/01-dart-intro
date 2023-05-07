
void main() {

  final Hero wolverine = new Hero('Logan', 'Regeneracion');

  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);

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

  Hero(this.name, this.power);

}