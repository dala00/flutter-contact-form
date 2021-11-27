import 'package:contact_form/models/application_field.dart';
import 'package:contact_form/network/http_client.dart';
import 'package:contact_form/use_cases/get_application_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_application_use_case_test.mocks.dart';

@GenerateMocks([HttpClient])
void main() {
  test('invoke', () async {
    final expectApplicationFields = [
      ApplicationField(
        id: 'a',
        label: 'Name',
        type: 'text',
        isRequired: true,
        placeholder: '',
      ),
      ApplicationField(
        id: 'b',
        label: 'Name2',
        type: 'textarea',
        isRequired: true,
        placeholder: '',
      ),
    ];
    final json = {
      'applicationFields':
          expectApplicationFields.map((field) => field.toJson()).toList(),
    };
    final client = MockHttpClient();
    when(client.get('applications')).thenAnswer((_) async => json);

    final useCase = GetApplicationUseCase('', client: client);
    final applicationFields = await useCase.invoke();

    expect(applicationFields, expectApplicationFields);
  });
}
