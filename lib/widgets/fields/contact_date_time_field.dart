import 'package:contact_form/generated/l10n.dart';
import 'package:contact_form/models/application_field.dart';
import 'package:contact_form/widgets/contact_form.dart';
import 'package:contact_form/widgets/fields/contact_field_error.dart';
import 'package:contact_form/widgets/fields/form_label.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ContactDateTimeField extends FormField<DateTime> {
  ContactDateTimeField({
    Key? key,
    required ApplicationField applicationField,
    required S s,
    required void Function(DateTime) onChanged,
  }) : super(
          key: key,
          autovalidateMode: AutovalidateMode.disabled,
          validator: applicationField.isRequired
              ? (value) {
                  if (value == null) {
                    return s.fieldIsRequired;
                  }
                  return null;
                }
              : null,
          initialValue: null,
          onSaved: (DateTime? value) {
            if (value != null) {
              onChanged(value);
            }
          },
          builder: (FormFieldState<DateTime> state) {
            final dateFormat = DateFormat.yMd();
            final timeFormat = DateFormat.Hm();

            Future<DateTime?> selectDate() async {
              final now = DateTime.now();
              return showDatePicker(
                context: state.context,
                initialDate: state.value ?? now,
                firstDate: now,
                lastDate: now.add(const Duration(days: 366 * 2)),
              );
            }

            Future<TimeOfDay?> selectTime() async {
              return showTimePicker(
                context: state.context,
                initialTime: state.value == null
                    ? TimeOfDay.now()
                    : TimeOfDay(
                        hour: state.value!.hour,
                        minute: state.value!.minute,
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
              state.didChange(dateTime);
              state.save();
            }

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormLabel(
                    label: applicationField.getLabel(
                  Localizations.localeOf(state.context).languageCode,
                )),
                Container(
                  margin: const EdgeInsets.only(top: ContactForm.labelMargin),
                  child: TextButton(
                    onPressed: selectDateTime,
                    child: Text(
                      state.value == null
                          ? s.selectDateAndTime
                          : dateFormat.format(state.value!) +
                              ' ' +
                              timeFormat.format(state.value!),
                    ),
                  ),
                ),
                state.hasError
                    ? ContactFieldError(message: state.errorText!)
                    : Container(),
              ],
            );
          },
        );
}
