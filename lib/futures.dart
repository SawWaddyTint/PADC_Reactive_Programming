import 'package:flutter/material.dart';

void futures() async {
  Future<String> padcFuture = Future.value("PADC Myanmar");
  String padc = await padcFuture;
  print(padc);

//  Future<String> delayedNameFuture =
//       Future.delayed(Duration(milliseconds: 5000), () => "Saw Waddy Tint");

//  String name= await delayedNameFuture;
//   print(name);

  Future<String> threeSecondsFuture =
      Future.delayed(Duration(seconds: 3), () => "3 seconds future");
//   String threeSecondsFutureValue = await threeSecondsFuture;
//   print (threeSecondsFutureValue);

  Future<String> twoSecondsFuture =
      Future.delayed(Duration(seconds: 2), () => "2 seconds future");
//   String twoSecondsFutureValue = await twoSecondsFuture;
//   print (twoSecondsFutureValue);

  Future<String> oneSecondFuture =
      Future.delayed(Duration(seconds: 1), () => "1 seconds future");
//   String oneSecondsFutureValue = await oneSecondsFuture;
//   print (oneSecondsFutureValue);

  print(await threeSecondsFuture);
  print(await twoSecondsFuture);
  print(await oneSecondFuture);

  Future<String> errorFuture = Future.error(NullThrownError());
  try {
    String value = await errorFuture;
    print(value);
  } catch (error) {
    print(error.toString());
  }
}
