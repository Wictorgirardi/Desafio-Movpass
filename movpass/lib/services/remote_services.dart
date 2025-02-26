import 'package:http/http.dart' as http;
import 'package:movpass/models/services.dart';
import 'package:movpass/services/mock_services.dart';

class RemoteServices {
  static var client = http.Client();

  // Use this flag to switch between mock data and real API
  static const bool USE_MOCK_DATA = true;

  static Future<List<Services>> fetchServicos() async {
    if (USE_MOCK_DATA) {
      return await MockServices.getMockServices();
    }

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
