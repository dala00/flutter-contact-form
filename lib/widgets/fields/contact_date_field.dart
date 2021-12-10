import 'package:contact_form/models/application_field.dart';
import 'package:contact_form/widgets/contact_form.dart';
import 'package:contact_form/widgets/fields/form_label.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ContactDateField extends StatelessWidget {
  const ContactDateField({
    Key? key,
    required this.applicationField,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  final ApplicationField applicationField;
  final DateTime? value;
  final void Function(DateTime) onChanged;

  @override
  Widget build(BuildContext context) {
    final format = DateFormat.yMd();

    Future<void> selectDate() async {
      final now = DateTime.now();
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: value ?? now,
        firstDate: now,
        lastDate: now.add(const Duration(days: 366 * 2)),
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
            onPressed: selectDate,
            child: Text(value == null ? 'Select date' : format.format(value!)),
          ),
        ),
      ],
    );
  }
}
