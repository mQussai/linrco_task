import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/location_controller.dart';

class LocationView extends GetView<LocationController> {
  const LocationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Location City'),
        centerTitle: true,
      ),
      body: GetBuilder(builder: (LocationController controller) {
        return Center(
          child: controller.city.isEmpty
              ? const CircularProgressIndicator()
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Your city is', style: TextStyle(fontSize: 20)),
                    Text(
                      controller.city,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
        );
      }),
    );
  }
}
