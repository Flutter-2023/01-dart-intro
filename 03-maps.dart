
void main() {

  // Map es pares de valores
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': <int, String>{
      1: 'ditto/front.png',
      2: 'ditto/back.png',
    }
  };

  final Map<int, String> pokemons = {
    1: 'ABC',
    2: 'XYZ',
    3: '132',
    150: 'AGV'
  };

  print(pokemon);
  print(pokemons);

  // utilizar mapas
  print('Name: ${ pokemon['name'] }'); // valor => Ditto
  print('Sprites: ${ pokemon['sprites'] }');

  print('Front: ${ pokemon['sprites'][1] }');
  print('Back: ${ pokemon['sprites'][2] }');

}
