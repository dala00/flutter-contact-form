import 'dart:io';

import 'package:package_info/package_info.dart';

import '../models/contact_field_data.dart';
import '../models/contact_field_request_data.dart';
import '../models/contact_request_data.dart';
import '../network/http_client.dart';
import 'base_use_case.dart';

class PostContactUseCase extends BaseUseCase {
  PostContactUseCase(String applicationKey, {HttpClient? client})
      : super(applicationKey, client: client);

  Future<bool> invoke({
    required List<ContactFieldData> contactFieldDataList,
    required String locale,
  }) async {
    final packageInfo = await PackageInfo.fromPlatform();
    final contactRequestData = ContactRequestData(
      platform: Platform.isIOS ? 'IOS' : 'ANDROID',
      version: packageInfo.version,
      buildNumber: packageInfo.buildNumber,
      locale: locale,
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
