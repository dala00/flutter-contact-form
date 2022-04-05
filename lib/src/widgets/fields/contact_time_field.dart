import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../../models/application_field.dart';
import '../contact_form.dart';
import 'contact_field_error.dart';
import 'form_label.dart';

class ContactTimeField extends FormField<TimeOfDay> {
  ContactTimeField({
    Key? key,
    required ApplicationField applicationField,
    required S s,
    required void Function(TimeOfDay) onChanged,
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
          onSaved: (TimeOfDay? value) {
            if (value != null) {
              onChanged(value);
            }
          },
          builder: (FormFieldState<TimeOfDay> state) {
            Future<void> selectTime() async {
              final picked = await showTimePicker(
                context: state.context,
                initialTime: state.value ?? TimeOfDay.now(),
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
                    onPressed: selectTime,
                    child: Text(state.value == null
                        ? s.selectTime
                        : state.value!.format(state.context)),
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
