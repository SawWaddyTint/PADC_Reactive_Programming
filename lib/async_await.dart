import 'package:flutter/cupertino.dart';

void asyncAwait() async {
  Future<String> padcFuture = Future.value("PADC Myanmar");
  String padc = await padcFuture;
  debugPrint(padc);
}
