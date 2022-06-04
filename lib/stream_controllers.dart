import 'dart:async';

void streamControllers() {
  StreamController<List<int>> numbersStreamController = StreamController();

// Widgets // Output
  numbersStreamController.stream.listen((numberList) {
    print(numberList);
  });

//Blocs
  numbersStreamController.sink.add([1, 2, 3, 4, 5]);
  numbersStreamController.sink.add([6, 7, 8, 9, 10]);

  // Widget onDispose
  numbersStreamController.close();

  //numbersStreamController.sink.add([6, 7, 8, 9, 10]);   // Uncaught Error: Bad state: Cannot add event after closing
}
