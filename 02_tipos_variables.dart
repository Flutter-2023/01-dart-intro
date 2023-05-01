void main() {
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isActive = true;
  // bool? isActive; //null safety

  // final abilities = ['impostor'];
  // final abilities = <String>['impostor'];
  final List<String> abilities = ['impostor'];

  final sprites = <String>['ditto/front.png', 'ditto/back.png'];

  print("""
  $pokemon
  $hp
  $isActive
  $abilities
  $sprites

  """);
}
