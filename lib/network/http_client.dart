import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;

class HttpClient {
  HttpClient({
    required this.applicationKey,
    this.baseUrl = 'https://contact-nite.com/api/app',
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
    final token = createToken();

    return {
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json',
    };
  }

  String createToken() {
    final parts = [
      'j09j02a3jfq:3fqj2q23aeaf',
      applicationKey,
      DateTime.now().toIso8601String().replaceFirst(RegExp(r'\..*'), ''),
    ];

    final bytes = utf8.encode(parts.join(''));
    final digest = sha256.convert(bytes);
    parts.add(digest.toString());

    final stringToBase64 = utf8.fuse(base64);
    return stringToBase64.encode(parts.join('.'));
  }
}
