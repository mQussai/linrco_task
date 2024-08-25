import 'package:get/get.dart';
import 'package:linrco_task/app/modules/location/data/providers/location_provider.dart';

class LocationController extends GetxController {
  //TODO: Implement LocationController
  String ip = '';
  String city = '';

  @override
  void onInit() async {
    super.onInit();
    await getIpAddress();
    await getCity();
  }

  getIpAddress() async {
    ip = await LocationProvider().getIpAddress();
  }

  getCity() async {
    city = await LocationProvider().getCity(ip);
    update();
  }
}
