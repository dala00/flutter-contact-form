import 'package:contact_form/models/contact_field_request_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_request_data.freezed.dart';
part 'contact_request_data.g.dart';

@freezed
class ContactRequestData with _$ContactRequestData {
  factory ContactRequestData({
    required String platform,
    required String version,
    required String buildNumber,
    required String locale,
    required List<ContactFieldRequestData> fields,
  }) = _ContactRequestData;

  factory ContactRequestData.fromJson(Map<String, dynamic> json) =>
      _$ContactRequestDataFromJson(json);
}
