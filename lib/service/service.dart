import 'package:http/http.dart' as http;
import 'package:template/model/model.dart';

class API {
  static const String _baseUrl = 'https://run.mocky.io/v3/3a1ec9ff-6a95-43cf-8be7-f5daa2122a34';

  static Future get getAdvertisement async {
    var response = await http.get(Uri.parse(_baseUrl));

    if (response.statusCode == 200) {
      var jsonData = response.body;
      return AdvertisementFromJson(jsonData);
    } else {
      return throw Exception("Failed to load product");
    }
  }
}
