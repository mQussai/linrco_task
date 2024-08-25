import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/fibonacci_controller.dart';

class FibonacciView extends GetView<FibonacciController> {
  const FibonacciView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Fibonacci'),
          centerTitle: true,
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: 40),
              Column(
                children: [
                  const Text(
                    "Random Generated Number is",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    controller.randomNumber.toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    'Fibonacci Series',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Text(
                      controller.series.toString(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
            ],
          ),
        ));
  }
}
