import 'package:contact_form/models/application_field.dart';
import 'package:contact_form/widgets/contact_form.dart';
import 'package:contact_form/widgets/fields/form_label.dart';
import 'package:flutter/material.dart';

class ContactTimeField extends StatelessWidget {
  const ContactTimeField({
    Key? key,
    required this.applicationField,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  final ApplicationField applicationField;
  final TimeOfDay? value;
  final void Function(TimeOfDay) onChanged;

  @override
  Widget build(BuildContext context) {
    Future<void> selectTime() async {
      final picked = await showTimePicker(
        context: context,
        initialTime: value ?? TimeOfDay.now(),
      );
      if (picked != null) {
        onChanged(picked);
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FormLabel(label: applicationField.label),
        Container(
          margin: const EdgeInsets.only(top: ContactForm.labelMargin),
          child: TextButton(
            onPressed: selectTime,
            child: Text(value == null ? 'Select time' : value!.format(context)),
          ),
        ),
      ],
    );
  }
}
