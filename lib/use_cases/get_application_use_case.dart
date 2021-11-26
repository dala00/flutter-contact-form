import 'dart:convert';

import 'package:contact_form/models/application_field.dart';
import 'package:http/http.dart';

class GetApplicationUseCase {
  Future<List<ApplicationField>> invoke(String key) async {
    final url = Uri.parse('http://192.168.11.12:3000/api/app/applications');
    final response = await get(url, headers: {'Authorization': 'Bearer $key'});
    final data = jsonDecode(response.body);
    return (data['applicationFields'] as List<dynamic>)
        .cast<Map<String, dynamic>>()
        .map((json) => ApplicationField.fromJson(json))
        .toList();
  }
}
