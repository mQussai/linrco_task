import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:linrco_task/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome'),
          centerTitle: true,
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: 40),
              const Column(
                children: [
                  Text(
                    "This task was developed by",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Mahmoud Qussai",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(height: 200),
              OutlinedButton(
                style: const ButtonStyle(
                    textStyle: WidgetStatePropertyAll(
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                    fixedSize: WidgetStatePropertyAll(Size(160, 40))),
                onPressed: () {
                  Get.toNamed(Routes.CALCULATOR);
                },
                child: const Text('Calculator'),
              ),
              const SizedBox(height: 20),
              OutlinedButton(
                style: const ButtonStyle(
                    textStyle: WidgetStatePropertyAll(
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                    fixedSize: WidgetStatePropertyAll(Size(160, 40))),
                onPressed: () {
                  Get.toNamed(Routes.LOCATION);
                },
                child: const Text('Location'),
              ),
              const SizedBox(height: 20),
              OutlinedButton(
                style: const ButtonStyle(
                    textStyle: WidgetStatePropertyAll(
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                    fixedSize: WidgetStatePropertyAll(Size(160, 40))),
                onPressed: () {
                  Get.toNamed(Routes.FIBONACCI);
                },
                child: const Text('Fibonacci'),
              )
            ],
          ),
        ));
  }
}
