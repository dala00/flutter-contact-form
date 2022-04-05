import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_field_request_data.freezed.dart';
part 'contact_field_request_data.g.dart';

@freezed
class ContactFieldRequestData with _$ContactFieldRequestData {
  factory ContactFieldRequestData({
    required String applicationFieldId,
    required dynamic value,
  }) = _ContactFieldRequestData;

  factory ContactFieldRequestData.fromJson(Map<String, dynamic> json) =>
      _$ContactFieldRequestDataFromJson(json);
}
