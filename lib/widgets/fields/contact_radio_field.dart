import 'package:contact_form/models/application_field.dart';
import 'package:contact_form/widgets/contact_form.dart';
import 'package:contact_form/widgets/fields/form_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ContactRadioField extends StatelessWidget {
  const ContactRadioField({
    Key? key,
    required this.applicationField,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  final ApplicationField applicationField;
  final String? value;
  final void Function(String?) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FormLabel(label: applicationField.label),
        Container(
          margin: const EdgeInsets.only(top: ContactForm.labelMargin),
          child: Column(
            children: applicationField.selects
                .map((applicationFieldSelect) => RadioListTile(
                      title: Text(applicationFieldSelect.name),
                      value: applicationFieldSelect.id,
                      groupValue: value,
                      dense: true,
                      contentPadding: EdgeInsets.zero,
                      onChanged: onChanged,
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
