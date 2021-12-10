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
        return (value as DateTime).toUtc().toIso8601String();
      case 'number':
        return num.tryParse(textEditingController!.text) ?? 0;
      case 'text':
      case 'textarea':
        return textEditingController!.text;
      default:
        return value;
    }
  }
}
