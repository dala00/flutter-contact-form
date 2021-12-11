import 'package:contact_form/models/application_field.dart';
import 'package:flutter/material.dart';

class ContactFieldData {
  ContactFieldData(
      {required this.applicationField, this.textEditingController});

  final ApplicationField applicationField;
  final TextEditingController? textEditingController;
  dynamic value;

  dynamic getValue() {
    if (value == null) {
      return null;
    }

    switch (applicationField.type) {
      case 'checkbox':
      case 'radio':
      case 'select':
        return value;
      case 'date':
      case 'datetime':
        return (value as DateTime).toUtc().toIso8601String();
      case 'number':
        return num.tryParse(textEditingController!.text) ?? 0;
      case 'text':
      case 'textarea':
        return textEditingController!.text;
      case 'time':
        return {
          'hour': (value as TimeOfDay).hour,
          'minute': (value as TimeOfDay).minute,
        };
      default:
        return value;
    }
  }
}
