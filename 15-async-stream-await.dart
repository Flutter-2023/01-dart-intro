
void main() {

  emitNumber()
    .listen((int value) {
      print('Stream value: $value');
    });

}

// Asycn* asociado con un Stream
Stream<int> emitNumber() async* {

  final valuesToEmit = [1,2,3,4,5];

  for (var value in valuesToEmit) {
    await Future.delayed(const Duration(seconds: 1));
    // return value; // No es permitido

    yield value;
  }

}