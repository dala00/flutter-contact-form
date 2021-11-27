import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpClient {
  HttpClient({
    required this.applicationKey,
    this.baseUrl = 'http://192.168.11.12:3000/api/app',
  });

  final String baseUrl;
  final String applicationKey;

  Future<dynamic> get(String path) async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/$path'),
        headers: createHeaders(),
      );
      return jsonDecode(response.body);
    } catch (e) {
      return null;
    }
  }

  Future<dynamic> post(String path, Map<String, dynamic> data) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/$path'),
        body: jsonEncode(data),
        headers: createHeaders(),
      );
      return jsonDecode(response.body);
    } catch (e) {
      return null;
    }
  }

  Map<String, String> createHeaders() {
    return {
      'Authorization': 'Bearer $applicationKey',
      'Content-Type': 'application/json',
    };
  }
}
