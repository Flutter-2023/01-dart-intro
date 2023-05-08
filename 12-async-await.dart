
// Puede ir solo void, ya que no retorna nada la funcion main
Future<void> main() async {

  print('Inicio del programa');

  // Manejar el error con try-catch
  try {
    final resp = await httpGet('https://angelfgdeveloper.com/');
    print(resp);
  } catch (err) {
    print('Tenemos un error: $err');
  }

  print('Fin del programa');

}

// Trabajo asincrono
// async simpre va a regresar un Future
Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  throw 'Error en la peticion';

  return 'Tenemos un valor en la peticion';
}