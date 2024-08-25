import 'dart:math';

import 'package:fibonacci/fibonacci.dart';
import 'package:get/get.dart';

class FibonacciController extends GetxController {
  int randomNumber = 0;
  List<dynamic> series = [];

  @override
  void onInit() {
    super.onInit();
    generateRandomNumber();
    getFibonacciSeries();
  }

  generateRandomNumber() {
    randomNumber = Random().nextInt(8999) + 1000;
    update();
  }

  getFibonacciSeries() {
    series = Fibonacci.printSeries(size: randomNumber);
  }
}
