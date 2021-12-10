import 'package:contact_form/models/application_field.dart';
import 'package:contact_form/widgets/contact_form.dart';
import 'package:contact_form/widgets/fields/form_label.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ContactDateTimeField extends StatelessWidget {
  const ContactDateTimeField({
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
    final dateFormat = DateFormat.yMd();
    final timeFormat = DateFormat.Hm();

    Future<DateTime?> selectDate() async {
      final now = DateTime.now();
      return showDatePicker(
        context: context,
        initialDate: value ?? now,
        firstDate: now,
        lastDate: now.add(const Duration(days: 366 * 2)),
      );
    }

    Future<TimeOfDay?> selectTime() async {
      return showTimePicker(
        context: context,
        initialTime: value == null
            ? TimeOfDay.now()
            : TimeOfDay(
                hour: value!.hour,
                minute: value!.minute,
              ),
      );
    }

    Future<void> selectDateTime() async {
      final date = await selectDate();
      if (date == null) {
        return;
      }

      TimeOfDay? time;

      while ((time = await selectTime()) == null) {
        final date = await selectDate();
        if (date == null) {
          return;
        }
      }

      final dateTime = DateTime(
        date.year,
        date.month,
        date.day,
        time!.hour,
        time.minute,
      );
      onChanged(dateTime);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FormLabel(label: applicationField.label),
        Container(
          margin: const EdgeInsets.only(top: ContactForm.labelMargin),
          child: TextButton(
            onPressed: selectDateTime,
            child: Text(
              value == null
                  ? 'Select date and time'
                  : dateFormat.format(value!) + ' ' + timeFormat.format(value!),
            ),
          ),
        ),
      ],
    );
  }
}
