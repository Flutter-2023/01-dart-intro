
// Stream es como un flujo de agua o corriente de agua
void main() {

  // Mandar a escuchar el stream
  emitNumbers().listen((value) {
    print('Stream value: $value');
  });

}

Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    // print('Desde periodic $value');

    return value;
  }).take(5); // Las emisiones a a realizar
}