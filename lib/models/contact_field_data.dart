import 'package:contact_form/models/application_field.dart';
import 'package:flutter/material.dart';

class ContactFieldData {
  ContactFieldData(
      {required this.applicationField, this.textEditingController});

  final ApplicationField applicationField;
  final TextEditingController? textEditingController;
  dynamic value;

  dynamic getValue() {
    switch (applicationField.type) {
      case 'CHECKBOX':
      case 'RADIO':
      case 'SELECT':
        return value;
      case 'DATE':
      case 'DATETIME':
        if (value == null) {
          return null;
        }
        return (value as DateTime).toUtc().toIso8601String();
      case 'NUMBER':
        if (value == null) {
          return null;
        }
        return num.tryParse(textEditingController!.text) ?? 0;
      case 'EMAIL':
      case 'TEXT':
      case 'TEXTAREA':
        return textEditingController!.text;
      case 'TIME':
        if (value == null) {
          return null;
        }
        return {
          'hour': (value as TimeOfDay).hour,
          'minute': (value as TimeOfDay).minute,
        };
      default:
        return value;
    }
  }
}
