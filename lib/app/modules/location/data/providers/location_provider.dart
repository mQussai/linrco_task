import 'package:get/get.dart';
import 'package:get/get_connect/connect.dart';

class LocationProvider {
  GetConnect client = GetConnect();
  Future<String> getIpAddress() async {
    Response res = await client.get('https://api.ipify.org/?format=json');
    String ip = res.body['ip'];

    return ip;
  }

  Future<String> getCity(String ip) async {
    Response res = await client.get('https://ipinfo.io/$ip/geo');
    String city = res.body['city'];

    return city;
  }
}
