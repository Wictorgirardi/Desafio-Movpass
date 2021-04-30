import 'package:http/http.dart' as http;
import 'package:movpass/models/services.dart';

class RemoteServices {
  static var client = http.Client();

  static Future<List<Services>> fetchServicos() async {
    var response = await client.get('https://dev.movpass.com.br/api/services/');
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return servicesFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }
}
