import 'dart:io';

import 'package:contact_form/models/contact_field_data.dart';
import 'package:contact_form/models/contact_field_request_data.dart';
import 'package:contact_form/models/contact_request_data.dart';
import 'package:contact_form/network/http_client.dart';
import 'package:contact_form/use_cases/base_use_case.dart';
import 'package:package_info/package_info.dart';

class PostContactUseCase extends BaseUseCase {
  PostContactUseCase(String applicationKey, {HttpClient? client})
      : super(applicationKey, client: client);

  Future<bool> invoke(
    List<ContactFieldData> contactFieldDataList,
  ) async {
    final packageInfo = await PackageInfo.fromPlatform();
    final contactRequestData = ContactRequestData(
      platform: Platform.isIOS ? 'IOS' : 'ANDROID',
      version: packageInfo.version,
      buildNumber: packageInfo.buildNumber,
      fields: contactFieldDataList
          .map((contactFieldData) => ContactFieldRequestData(
                applicationFieldId: contactFieldData.applicationField.id,
                value: contactFieldData.getValue(),
              ))
          .toList(),
    );

    final data = await client.post(
      'contacts/store-contact',
      {'contact': contactRequestData.toJson()},
    );
    return data['result'] == true;
  }
}
