import 'package:contact_form/models/application_field.dart';
import 'package:contact_form/widgets/contact_form.dart';
import 'package:contact_form/widgets/fields/contact_field_error.dart';
import 'package:contact_form/widgets/fields/form_label.dart';
import 'package:flutter/material.dart';

class ContactCheckboxField extends FormField<List<String>> {
  ContactCheckboxField({
    Key? key,
    required ApplicationField applicationField,
    required void Function(List<String>) onChanged,
  }) : super(
          key: key,
          autovalidateMode: AutovalidateMode.disabled,
          validator: applicationField.isRequired
              ? (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field is required';
                  }
                  return null;
                }
              : null,
          initialValue: [],
          onSaved: (List<String>? value) => onChanged(value ?? []),
          builder: (FormFieldState<List<String>> state) {
            List<String> getNewValue(
                bool? value, String applicationFieldSelectId) {
              final currentValue = state.value ?? [];
              if (value == true) {
                return [...currentValue, applicationFieldSelectId];
              } else {
                return currentValue
                    .where((row) => row != applicationFieldSelectId)
                    .toList();
              }
            }

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
                              value: state.value
                                      ?.contains(applicationFieldSelect.id) ==
                                  true,
                              dense: true,
                              contentPadding: EdgeInsets.zero,
                              onChanged: (value) {
                                final newValue = getNewValue(
                                    value, applicationFieldSelect.id);
                                state.didChange(newValue);
                                state.save();
                              },
                            ))
                        .toList(),
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
