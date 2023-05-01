void main() {
  // print("Hola Mundo");

  // var myName = 'Angel';
  // String myName = 'Angel';

  // final myName = 'Angel'; // No cambia el valor
  // myName = 'Luis'; // No lo permite cuando es final

  // Variable tardia
  // late final myName;
  // myName = 'Luisito';

  // String myName = 'Angel';
  // myName = 123.123; // No se puede porque es de tipo String

  // const se asigna en tiempo de construccion
  // final se asigna en tiempo de ejecucion
  const myName = 'Luisito';

  // Interpolacion de strings
  print('Hola $myName');
  print('Hola ${ myName.toUpperCase() }');

  print('Suma ${ 1 + 1 }'); // Suma 2
}
