import 'package:http/http.dart' as http;

class ApiClient {
  final String baseUrl;

  ApiClient(this.baseUrl);

  Future<http.Response> get(String endpoint) {
    return http.get(Uri.parse('$baseUrl/$endpoint'));
  }

  // Additional methods for POST, PUT, DELETE can be added here
}
