import 'package:contact_form/models/application_field.dart';
import 'package:contact_form/widgets/contact_form.dart';
import 'package:contact_form/widgets/fields/contact_field_error.dart';
import 'package:contact_form/widgets/fields/form_label.dart';
import 'package:flutter/material.dart';

class ContactTimeField extends FormField<TimeOfDay> {
  ContactTimeField({
    Key? key,
    required ApplicationField applicationField,
    required void Function(TimeOfDay) onChanged,
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
                FormLabel(label: applicationField.label),
                Container(
                  margin: const EdgeInsets.only(top: ContactForm.labelMargin),
                  child: TextButton(
                    onPressed: selectTime,
                    child: Text(state.value == null
                        ? 'Select time'
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
