
// Puede ir solo void, ya que no retorna nada la funcion main
Future<void> main() async {

  print('Inicio del programa');

  // Manejar el error con try-catch
  try {
    final resp = await httpGet('https://angelfgdeveloper.com/');
    print('Exito: $resp');
  } on Exception catch(err) { // catch pata obtener el msj de error
    print('Tenemos una Exception: $err');
  } catch (err) {
    print('OOPS! algo terrible paso: $err');
  } finally {
    // Siempre ejecuta esta linea
    print('Fin del try y catch');
  }

  print('Fin del programa');

}

// Trabajo asincrono
// async simpre va a regresar un Future
Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  throw new Exception('No hay parametros en el URL'); // lo vemos con on

  // throw 'Error en la peticion';
  // return 'Tenemos un valor en la peticion';
}