import 'package:contact_form/models/application_field.dart';
import 'package:flutter/material.dart';

class ContactTextField extends StatelessWidget {
  const ContactTextField({
    Key? key,
    required this.applicationField,
    required this.controller,
    this.maxLines,
    this.minLines,
  }) : super(key: key);

  final ApplicationField applicationField;
  final TextEditingController controller;
  final int? maxLines;
  final int? minLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: applicationField.label,
        hintText: applicationField.placeholder,
      ),
      maxLines: maxLines,
      minLines: minLines,
    );
  }
}
