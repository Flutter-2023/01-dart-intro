void main() {

  print( greetEveryone() );
  print( greetEveryoneArrowFunction() );

  print('Suma: ${ addTwoNumbers(15, 40) }');
  print('Suma Arrow Function: ${ addTwoNumbersWithArrowFunction(10, 20) }');

  print('Suma optional: ${ addTwoNumbersOptional(15) }');

  // Argumentos con nombre
  print( greetPerson(name: 'Angel', message: 'Hi,') );
  
}

String greetEveryone() {
  return 'Hello everyone';
}

String greetEveryoneArrowFunction() => 'Hello everyone with Arrow function';

int addTwoNumbers(int a, int b) {
  return a + b;
}

int addTwoNumbersWithArrowFunction(int a, int b) => a + b;

// Definir b como opcional con []
int addTwoNumbersOptional(int a, [ int? b, int c = 1 ]) {
  // Opciones similares o equivalentes
  // b = b ?? 0; // Verificar que b tenga un numero, sino le coloca un 0
  // b = b + 1;
  // b ??=0;
  // b++;

  b ??= 0;

  return a + b;
}


// Parametros con nombre
String greetPerson({ 
  required String name, // Parametro obligatorio con required
  String message = 'Hola,' 
}) {
  return '$message $name';
}