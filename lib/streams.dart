void streams() async {
  //For Single subscription
//  Stream<int> numberStream = Stream.fromIterable([1,2,3,4,5,6,7,8,9,10]);

  Stream<int> numberStream =
      Stream.fromIterable([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]).asBroadcastStream();
  numberStream.listen((value) {
    print(value);
  });

  numberStream.listen((value) {
    print(value);
  });

  Stream<List<int>> numberListStream =
      Stream.value([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
  numberListStream.listen((value) {
    print(value);
  });

  Stream<String> errorStream = Stream.error(NullThrownError);
  errorStream.listen((value) => print(value)).onError((error) => print(error));
}
