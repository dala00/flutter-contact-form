import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
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
    String? metadata,
  }) async {
    final packageInfo = await PackageInfo.fromPlatform();
    final contactRequestData = ContactRequestData(
      platform: Platform.isIOS ? 'IOS' : 'ANDROID',
      osVersion: await _getOSVersion(),
      version: packageInfo.version,
      buildNumber: packageInfo.buildNumber,
      locale: locale,
      metadata: metadata,
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
    return data?['result'] == true;
  }

  Future<String> _getOSVersion() async {
    final deviceInfoPlugin = DeviceInfoPlugin();

    if (Platform.isAndroid) {
      final androidInfo = await deviceInfoPlugin.androidInfo;
      return androidInfo.version.release ?? '';
    } else if (Platform.isIOS) {
      final iOSInfo = await deviceInfoPlugin.iosInfo;
      return iOSInfo.systemVersion ?? '';
    }

    return '';
  }
}
