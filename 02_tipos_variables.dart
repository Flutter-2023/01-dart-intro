void main() {
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isActive = true;
  // bool? isActive; //null safety

  // final abilities = ['impostor'];
  // final abilities = <String>['impostor'];
  final List<String> abilities = ['impostor'];

  final sprites = <String>['ditto/front.png', 'ditto/back.png'];

  // dynamic por defecto es null
  dynamic errorMessage = 'Hola'; // No infiere el tipo
  errorMessage = true;
  errorMessage = [1, 2, 3, 4, 5, 6]; // Listado de numeros
  errorMessage = {1, 2, 3, 4, 5, 6}; // set de datos
  errorMessage = () => true;
  errorMessage = null;
  // errorMessage += 1; // Es un error

  print("""
  $pokemon
  $hp
  $isActive
  $abilities
  $sprites
  $errorMessage
  """);
}
