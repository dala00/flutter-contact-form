import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../lib/src/models/application_field.dart';
import '../../lib/src/models/contact_field_data.dart';
import '../../lib/src/models/contact_field_request_data.dart';
import '../../lib/src/models/contact_request_data.dart';
import '../../lib/src/network/http_client.dart';
import '../../lib/src/use_cases/post_contact_use_case.dart';

import 'store_contact_use_case_test.mocks.dart';

@GenerateMocks([HttpClient])
void main() {
  const channel = MethodChannel('plugins.flutter.io/package_info');

  TestWidgetsFlutterBinding.ensureInitialized();

  const packageInfo = <String, dynamic>{
    'appName': 'ABC',
    'packageName': 'A.B.C',
    'version': '1.0.0',
    'buildNumber': '1',
  };

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == 'getAll') {
        return packageInfo;
      }
      return null;
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('invoke', () async {
    final contactFields = [
      ContactFieldData(
        applicationField: ApplicationField(
          id: 'a',
          label: 'aaaa',
          localeLabels: [],
          type: 'TEXT',
          isRequired: true,
          placeholder: '',
          selects: [],
        ),
        textEditingController: TextEditingController(text: 'aaa'),
      ),
      ContactFieldData(
        applicationField: ApplicationField(
          id: 'b',
          label: 'bbbb',
          localeLabels: [],
          type: 'TEXTAREA',
          isRequired: true,
          placeholder: '',
          selects: [],
        ),
        textEditingController: TextEditingController(text: 'bbb\nbbb'),
      ),
    ];
    final contact = ContactRequestData(
      platform: 'ANDROID',
      osVersion: '',
      version: packageInfo['version'],
      buildNumber: packageInfo['buildNumber'],
      locale: 'en',
      metadata: '{"key":"value"}',
      fields: [
        ContactFieldRequestData(
          applicationFieldId: contactFields[0].applicationField.id,
          value: contactFields[0].textEditingController!.text,
        ),
        ContactFieldRequestData(
          applicationFieldId: contactFields[1].applicationField.id,
          value: contactFields[1].textEditingController!.text,
        ),
      ],
    );
    final json = {'contact': contact.toJson()};
    final client = MockHttpClient();
    when(client.post('contacts/store-contact', json))
        .thenAnswer((_) async => ({'result': true}));

    final useCase = PostContactUseCase('', client: client);
    final result = await useCase.invoke(
      contactFieldDataList: contactFields,
      locale: 'en',
      metadata: '{"key":"value"}',
    );

    expect(result, true);
  });
}
