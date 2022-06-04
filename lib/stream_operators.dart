void streamOperators() {
  Stream<int> numberStream =
      Stream.fromIterable([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]).asBroadcastStream();

  /// Filtering Operators
  // Where
  numberStream
      .where((number) => number % 2 == 0)
      .listen((number) => print(number));

  // First Where
  numberStream
      .firstWhere((number) => number % 2 == 0)
      .then((number) => print(number));

  // Last Where
  numberStream
      .lastWhere((number) => number % 2 == 0)
      .then((number) => print(number));

  // Conditional Operators
  // Take
  numberStream.take(5).listen((numbers) => print(numbers));

  // Take While
  numberStream
      .takeWhile((number) => number < 5)
      .listen((numbers) => print(numbers));

  // Skip
  numberStream.skip(5).listen((numbers) => print(numbers));

  // Skip While
  numberStream
      .skipWhile((number) => number < 5)
      .listen((numbers) => print(numbers));

  /// Transformation Operators
  // Map
  numberStream.map((number) => number * 2).listen((numbers) => print(numbers));

  // Async Expand
  Stream<List<int>> numberListStream =
      Stream.value([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
  numberListStream
      .asyncExpand((numberList) => Stream.fromIterable(numberList))
      .where((number) => number % 2 == 0)
      .map((number) => number * 2)
      .listen((number) => print(number));

  /// Operators that produce a single value
  // Join
  numberStream.join(",").then((joinedString) => print(joinedString));

  // Reduce
  numberStream
      .reduce((previous, element) => previous + element)
      .then((value) => print(value));

  // To List
  numberStream.toList().then((value) => print(value));

  // To Set
  numberStream.toSet().then((value) => print(value));
}
