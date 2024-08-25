import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() async {
    super.onInit();
    Future.delayed(
      const Duration(milliseconds: 3000),
      () async {
        _goNext();
      },
    );
  }

  _goNext() async {
    Get.offAllNamed(Routes.HOME);
  }
}
