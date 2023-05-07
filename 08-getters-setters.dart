
void main() {

  final Square mySquare = Square(side: -10.0);

  // mySquare.side = -5;

  print('Area: ${ mySquare.calculateArea() }');
  print('Area: ${ mySquare.area }');

}

class Square {

  // convertir a propiedad privada _side
  double _side; // side * side

  // Se recomienda primeros las asersiones y despues las asignaciones
  // Las asset solo funcionan en tiempo de debug como modo desarrollador
  Square({ required double side }) 
    : assert(side >= 0, 'side must be >= 0 assert'),
      _side = side;

  double calculateArea() {
    return _side * _side;
  }

  double get area {
    return _side * _side;
  }

  set side(double value) {
    print('Setting new value $value');
    if ( value < 0) throw 'Value must be >= 0';

    _side = value; // Estableciendo nuevo valor
  }

}