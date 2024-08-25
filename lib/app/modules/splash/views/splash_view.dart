import 'package:flutter/material.dart';
import 'package:overlay_loader_with_app_icon/overlay_loader_with_app_icon.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OverlayLoaderWithAppIcon(
        appIcon: Icon(
          Icons.flutter_dash,
          size: 100,
          color: Colors.deepPurpleAccent,
        ),
        circularProgressColor: Colors.deepPurpleAccent,
        overlayBackgroundColor: Colors.deepPurpleAccent,
        appIconSize: 100,
        isLoading: true,
        overlayOpacity: 0.3,
        child: Container(),
      ),
    );
  }
}
