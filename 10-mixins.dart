
// Todo lo que los animales tienen en comun
abstract class Animal {}

// Caracteristicas especificas solo de mamiferos
abstract class Mamifero extends Animal {}

// Caracteristicas especificas solo de Aves
abstract class Ave extends Animal {}

// Caracteristicas especificas solo de Peces
abstract class Pez extends Animal {}


abstract class Volador {
  void volar() => print('Estoy volando!');
}

abstract class Caminante {
  void caminar() => print('Estoy caminando!');
}

abstract class Nadador {
  void nadar() => print('Estoy nadando!');
}

// Crear animales
// with es añadir lo de Mixins
// Seccion de mamifero con sus cualidades
class Delfin extends Mamifero with Nadador {}
class Murcielago extends Mamifero with Volador, Caminante {}
class Gato extends Mamifero with Caminante {}

// Seccion de Aves con sus cualidades
class Paloma extends Ave with Volador, Caminante {}
class Pato extends Ave with Volador, Caminante, Nadador {}

// Seccion de Peces con sus cualidades
class tiburon extends Pez with Nadador {}
class PezVolador extends Pez with Nadador, Volador {}

void main() {

final Delfin flipper = Delfin();
flipper.nadar();

final Murcielago batman = Murcielago();
batman.caminar();
batman.volar();

final namor = Pato();
namor.caminar();
namor.volar();
namor.nadar();

}