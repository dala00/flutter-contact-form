import 'package:contact_form/generated/l10n.dart';
import 'package:contact_form/models/application_field.dart';
import 'package:flutter/material.dart';

class ContactTextField extends StatelessWidget {
  const ContactTextField({
    Key? key,
    required this.applicationField,
    required this.controller,
    required this.s,
    this.keyboardType,
    this.maxLines,
    this.minLines,
    this.validator,
  }) : super(key: key);

  final ApplicationField applicationField;
  final TextEditingController controller;
  final S s;
  final TextInputType? keyboardType;
  final int? maxLines;
  final int? minLines;
  final String? Function(String?)? validator;

  String? Function(String?)? _validator(BuildContext context) {
    if (validator != null) {
      return validator!;
    }

    if (!applicationField.isRequired) {
      return null;
    }

    return (value) {
      if (value == null || value.trim().isEmpty) {
        return s.fieldIsRequired;
      }
      return null;
    };
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: applicationField
            .getLabel(Localizations.localeOf(context).languageCode),
        hintText: applicationField.placeholder,
      ),
      keyboardType: keyboardType,
      maxLines: maxLines,
      minLines: minLines,
      validator: _validator(context),
    );
  }
}
