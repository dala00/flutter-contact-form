import 'package:contact_form/models/contact_field_data.dart';
import 'package:contact_form/widgets/fields/contact_checkbox_field.dart';
import 'package:contact_form/widgets/fields/contact_date_field.dart';
import 'package:contact_form/widgets/fields/contact_date_time_field.dart';
import 'package:contact_form/widgets/fields/contact_radio_field.dart';
import 'package:contact_form/widgets/fields/contact_select_field.dart';
import 'package:contact_form/widgets/fields/contact_text_field.dart';
import 'package:contact_form/widgets/fields/contact_time_field.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class ContactField extends StatelessWidget {
  const ContactField(
      {Key? key, required this.contactFieldData, required this.onChanged})
      : super(key: key);

  final ContactFieldData contactFieldData;
  final void Function(dynamic) onChanged;

  @override
  Widget build(BuildContext context) {
    switch (contactFieldData.applicationField.type) {
      case 'checkbox':
        return ContactCheckboxField(
          applicationField: contactFieldData.applicationField,
          onChanged: onChanged,
        );
      case 'date':
        return ContactDateField(
          applicationField: contactFieldData.applicationField,
          onChanged: onChanged,
        );
      case 'datetime':
        return ContactDateTimeField(
          applicationField: contactFieldData.applicationField,
          onChanged: onChanged,
        );
      case 'email':
        return ContactTextField(
          applicationField: contactFieldData.applicationField,
          controller: contactFieldData.textEditingController!,
          keyboardType: TextInputType.emailAddress,
          validator: (String? value) {
            if (value == null || value.isEmpty) {
              if (contactFieldData.applicationField.isRequired) {
                return 'This field is required';
              }
              return null;
            }
            if (!EmailValidator.validate(value)) {
              return 'Please enter a valid email address';
            }
            return null;
          },
        );
      case 'number':
        return ContactTextField(
          applicationField: contactFieldData.applicationField,
          controller: contactFieldData.textEditingController!,
          keyboardType: TextInputType.number,
        );
      case 'radio':
        return ContactRadioField(
          applicationField: contactFieldData.applicationField,
          onChanged: onChanged,
        );
      case 'select':
        return ContactSelectField(
          applicationField: contactFieldData.applicationField,
          value: contactFieldData.value,
          onChanged: onChanged,
        );
      case 'text':
        return ContactTextField(
          applicationField: contactFieldData.applicationField,
          controller: contactFieldData.textEditingController!,
        );
      case 'textarea':
        return ContactTextField(
          applicationField: contactFieldData.applicationField,
          controller: contactFieldData.textEditingController!,
          maxLines: 8,
          minLines: 3,
        );
      case 'time':
        return ContactTimeField(
          applicationField: contactFieldData.applicationField,
          onChanged: onChanged,
        );
      default:
        return Text(contactFieldData.applicationField.id);
    }
  }
}
