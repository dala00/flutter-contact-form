import 'package:contact_form/models/application_field.dart';
import 'package:contact_form/widgets/contact_form.dart';
import 'package:contact_form/widgets/fields/contact_field_error.dart';
import 'package:contact_form/widgets/fields/form_label.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ContactDateField extends FormField<DateTime> {
  ContactDateField({
    Key? key,
    required ApplicationField applicationField,
    required void Function(DateTime) onChanged,
  }) : super(
          key: key,
          autovalidateMode: AutovalidateMode.disabled,
          validator: applicationField.isRequired
              ? (value) {
                  if (value == null) {
                    return 'This field is required';
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
            final format = DateFormat.yMd();

            Future<void> selectDate() async {
              final now = DateTime.now();
              final picked = await showDatePicker(
                context: state.context,
                initialDate: state.value ?? now,
                firstDate: now,
                lastDate: now.add(const Duration(days: 366 * 2)),
              );
              if (picked != null) {
                state.didChange(picked);
                state.save();
              }
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
                    onPressed: selectDate,
                    child: Text(state.value == null
                        ? 'Select date'
                        : format.format(state.value!)),
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
