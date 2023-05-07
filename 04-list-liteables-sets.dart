
void main() {

  // Identificamos un listado por []
  final numbers = [1,2,3,4,5,5,5,6,7,8,9,9,10];

  print('List original $numbers');
  print('List original sin duplicados: ${ numbers.toSet().toList() }');

  print('Length ${ numbers.length }');
  print('Index 0: ${ numbers[0] }');
  print('Index 0: ${ numbers.first }');
  print('Last 10: ${ numbers.last }');

  // Cambia el [] por () el () es un Iterable
  print('Reversed: ${ numbers.reversed }'); // (10, 9, 9, 8, 7, 6, 5, 5, 5, 4, 3, 2, 1)

  // Un Iterable es una coleccion que se puede iterar
  final reversedNumbers = numbers.reversed;
  print('Iterable: $reversedNumbers');

  // Recuperar nuestro listado [] original con .toList(); en un Iterable
  print('List: ${ reversedNumbers.toList() }');

  // Es como un listado, pero los valores son unicos, no hay duplicados
  print('Set: ${ reversedNumbers.toSet() }');

  // where es un un metodo, para hacer filtros
  final numbersGreaterThanFive = numbers.where((num) {
    return num > 5; // true (Si el numero es mayor a 5)
  });

  print('Mayor a 5: ${ numbersGreaterThanFive }');
  print('Mayor a 5 sin duplicados (Set): ${ numbersGreaterThanFive.toSet() }');
  print('Mayor a 5 sin duplicados (List): ${ numbersGreaterThanFive.toSet().toList() }');

}