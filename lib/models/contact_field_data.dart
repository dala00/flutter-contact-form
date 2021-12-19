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
      case 'checkbox':
      case 'radio':
      case 'select':
        return value;
      case 'date':
      case 'datetime':
        if (value == null) {
          return null;
        }
        return (value as DateTime).toUtc().toIso8601String();
      case 'number':
        if (value == null) {
          return null;
        }
        return num.tryParse(textEditingController!.text) ?? 0;
      case 'email':
      case 'text':
      case 'textarea':
        return textEditingController!.text;
      case 'time':
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
