import 'package:contact_form/models/application_field.dart';
import 'package:flutter/material.dart';

class ContactFieldData {
  ContactFieldData(
      {required this.applicationField, this.textEditingController});

  final ApplicationField applicationField;
  final TextEditingController? textEditingController;

  dynamic getValue() {
    switch (applicationField.type) {
      case 'text':
      case 'textarea':
        return textEditingController?.text;
      default:
        return '';
    }
  }
}
