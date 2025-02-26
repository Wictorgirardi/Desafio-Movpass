import 'package:http/http.dart' as http;
import 'package:movpass/models/services.dart';

class RemoteServices {
  static var client = http.Client();

  static Future<List<Services>> fetchServicos() async {
    try {
      final response = await client
          .get(Uri.parse('https://dev.movpass.com.br/api/services/'));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        return servicesFromJson(jsonString);
      } else {
        // Return empty list instead of null when request fails
        return [];
      }
    } catch (e) {
      // Handle exceptions by returning empty list
      return [];
    }
  }
}
