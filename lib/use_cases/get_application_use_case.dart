import 'package:contact_form/models/application_field.dart';
import 'package:contact_form/network/http_client.dart';
import 'package:contact_form/use_cases/base_use_case.dart';

class GetApplicationUseCase extends BaseUseCase {
  GetApplicationUseCase(String applicationKey, {HttpClient? client})
      : super(applicationKey, client: client);

  Future<List<ApplicationField>> invoke() async {
    final data = await client.get('applications');
    return (data['applicationFields'] as List<dynamic>)
        .cast<Map<String, dynamic>>()
        .map((json) => ApplicationField.fromJson(json))
        .toList();
  }
}
