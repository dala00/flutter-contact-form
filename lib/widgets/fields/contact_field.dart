import 'package:contact_form/models/contact_field_data.dart';
import 'package:contact_form/widgets/fields/contact_text_field.dart';
import 'package:flutter/material.dart';

class ContactField extends StatelessWidget {
  const ContactField({
    Key? key,
    required this.contactFieldData,
  }) : super(key: key);

  final ContactFieldData contactFieldData;

  @override
  Widget build(BuildContext context) {
    switch (contactFieldData.applicationField.type) {
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
      default:
        return Text(contactFieldData.applicationField.id);
    }
  }
}
