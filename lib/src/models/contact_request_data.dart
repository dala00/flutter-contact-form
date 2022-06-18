import 'package:freezed_annotation/freezed_annotation.dart';

import 'contact_field_request_data.dart';

part 'contact_request_data.freezed.dart';
part 'contact_request_data.g.dart';

@freezed
class ContactRequestData with _$ContactRequestData {
  factory ContactRequestData({
    required String platform,
    required String osVersion,
    required String version,
    required String buildNumber,
    required String locale,
    required String? metadata,
    required List<ContactFieldRequestData> fields,
  }) = _ContactRequestData;

  factory ContactRequestData.fromJson(Map<String, dynamic> json) =>
      _$ContactRequestDataFromJson(json);
}
