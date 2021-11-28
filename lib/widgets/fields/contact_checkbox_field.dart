import 'package:contact_form/models/application_field.dart';
import 'package:contact_form/widgets/contact_form.dart';
import 'package:contact_form/widgets/fields/form_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ContactCheckboxField extends StatelessWidget {
  const ContactCheckboxField({
    Key? key,
    required this.applicationField,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  final ApplicationField applicationField;
  final List<String> value;
  final void Function(List<String>) onChanged;

  void _onChanged(bool? newValue, String applicationFieldSelectId) {
    if (newValue == true) {
      onChanged([...value, applicationFieldSelectId]);
    } else {
      onChanged(value.where((row) => row != applicationFieldSelectId).toList());
    }
  }

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
                .map((applicationFieldSelect) => CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text(applicationFieldSelect.name),
                      value: value.contains(applicationFieldSelect.id),
                      dense: true,
                      contentPadding: EdgeInsets.zero,
                      onChanged: (newValue) => _onChanged(
                        newValue,
                        applicationFieldSelect.id,
                      ),
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
