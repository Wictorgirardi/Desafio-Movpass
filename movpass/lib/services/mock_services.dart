import 'package:movpass/models/services.dart';

class MockServices {
  static Future<List<Services>> getMockServices() async {
    // Simulate network delay
    await Future.delayed(Duration(seconds: 1));

    // Return mock data that matches the expected API format
    return [
      Services(
        id: 1,
        label: 'free_evaluation',
        duration: '60',
        price: ' 0 USD',
      ),
      Services(
        id: 2,
        label: 'functional',
        duration: '45',
        price: ' 80.00 USD',
      ),
      Services(
        id: 3,
        label: 'hiit',
        duration: '30',
        price: ' 65.00 USD',
      ),
      Services(
        id: 4,
        label: 'stretching',
        duration: '45',
        price: ' 70.00 USD',
      ),
      Services(
        id: 5,
        label: 'yoga',
        duration: '60',
        price: ' 90.00 USD',
      ),
    ];
  }
}
