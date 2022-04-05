import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../generated/l10n.dart';
import '../../models/application_field.dart';
import '../contact_form.dart';
import 'contact_field_error.dart';
import 'form_label.dart';

class ContactDateField extends FormField<DateTime> {
  ContactDateField({
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
                        ? s.selectDate
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
