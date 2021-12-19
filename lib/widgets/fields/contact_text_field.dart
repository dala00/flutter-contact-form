import 'package:contact_form/models/application_field.dart';
import 'package:flutter/material.dart';

class ContactTextField extends StatelessWidget {
  const ContactTextField({
    Key? key,
    required this.applicationField,
    required this.controller,
    this.keyboardType,
    this.maxLines,
    this.minLines,
    this.validator,
  }) : super(key: key);

  final ApplicationField applicationField;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final int? maxLines;
  final int? minLines;
  final String? Function(String?)? validator;

  String? Function(String?)? _validator() {
    if (validator != null) {
      return validator!;
    }

    if (!applicationField.isRequired) {
      return null;
    }

    return (value) {
      if (value == null || value.trim().isEmpty) {
        return 'This field is required';
      }
      return null;
    };
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: applicationField.label,
        hintText: applicationField.placeholder,
      ),
      keyboardType: keyboardType,
      maxLines: maxLines,
      minLines: minLines,
      validator: _validator(),
    );
  }
}
