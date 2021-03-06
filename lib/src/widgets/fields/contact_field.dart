import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../../models/contact_field_data.dart';
import 'contact_checkbox_field.dart';
import 'contact_date_field.dart';
import 'contact_date_time_field.dart';
import 'contact_radio_field.dart';
import 'contact_select_field.dart';
import 'contact_text_field.dart';
import 'contact_time_field.dart';

class ContactField extends StatelessWidget {
  const ContactField({
    Key? key,
    required this.contactFieldData,
    required this.s,
    required this.onChanged,
  }) : super(key: key);

  final ContactFieldData contactFieldData;
  final S s;
  final void Function(dynamic) onChanged;

  @override
  Widget build(BuildContext context) {
    switch (contactFieldData.applicationField.type) {
      case 'CHECKBOX':
        return ContactCheckboxField(
          applicationField: contactFieldData.applicationField,
          s: s,
          onChanged: onChanged,
        );
      case 'DATE':
        return ContactDateField(
          applicationField: contactFieldData.applicationField,
          s: s,
          onChanged: onChanged,
        );
      case 'DATETIME':
        return ContactDateTimeField(
          applicationField: contactFieldData.applicationField,
          s: s,
          onChanged: onChanged,
        );
      case 'EMAIL':
        return ContactTextField(
          applicationField: contactFieldData.applicationField,
          controller: contactFieldData.textEditingController!,
          keyboardType: TextInputType.emailAddress,
          s: s,
          validator: (String? value) {
            if (value == null || value.isEmpty) {
              if (contactFieldData.applicationField.isRequired) {
                return s.fieldIsRequired;
              }
              return null;
            }
            if (!EmailValidator.validate(value)) {
              return s.enterValidEmail;
            }
            return null;
          },
        );
      case 'NUMBER':
        return ContactTextField(
          applicationField: contactFieldData.applicationField,
          controller: contactFieldData.textEditingController!,
          keyboardType: TextInputType.number,
          s: s,
        );
      case 'RADIO':
        return ContactRadioField(
          applicationField: contactFieldData.applicationField,
          s: s,
          onChanged: onChanged,
        );
      case 'SELECT':
        return ContactSelectField(
          applicationField: contactFieldData.applicationField,
          value: contactFieldData.value,
          s: s,
          onChanged: onChanged,
        );
      case 'TEXT':
        return ContactTextField(
          applicationField: contactFieldData.applicationField,
          controller: contactFieldData.textEditingController!,
          s: s,
        );
      case 'TEXTAREA':
        return ContactTextField(
          applicationField: contactFieldData.applicationField,
          controller: contactFieldData.textEditingController!,
          maxLines: 8,
          minLines: 3,
          s: s,
        );
      case 'TIME':
        return ContactTimeField(
          applicationField: contactFieldData.applicationField,
          s: s,
          onChanged: onChanged,
        );
      default:
        return Text(contactFieldData.applicationField.id);
    }
  }
}
