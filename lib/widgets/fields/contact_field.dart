import 'package:contact_form/models/contact_field_data.dart';
import 'package:contact_form/widgets/fields/contact_checkbox_field.dart';
import 'package:contact_form/widgets/fields/contact_date_field.dart';
import 'package:contact_form/widgets/fields/contact_date_time_field.dart';
import 'package:contact_form/widgets/fields/contact_radio_field.dart';
import 'package:contact_form/widgets/fields/contact_select_field.dart';
import 'package:contact_form/widgets/fields/contact_text_field.dart';
import 'package:contact_form/widgets/fields/contact_time_field.dart';
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
          value: contactFieldData.value ?? [],
          onChanged: onChanged,
        );
      case 'date':
        return ContactDateField(
          applicationField: contactFieldData.applicationField,
          value: contactFieldData.value,
          onChanged: onChanged,
        );
      case 'datetime':
        return ContactDateTimeField(
          applicationField: contactFieldData.applicationField,
          value: contactFieldData.value,
          onChanged: onChanged,
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
          value: contactFieldData.value,
          onChanged: onChanged,
        );
      case 'select':
        return ContactSelectField(
          applicationField: contactFieldData.applicationField,
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
          value: contactFieldData.value,
          onChanged: onChanged,
        );
      default:
        return Text(contactFieldData.applicationField.id);
    }
  }
}
