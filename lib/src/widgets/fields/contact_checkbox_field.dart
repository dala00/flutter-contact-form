import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../../models/application_field.dart';
import '../contact_form.dart';
import 'contact_field_error.dart';
import 'form_label.dart';

class ContactCheckboxField extends FormField<List<String>> {
  ContactCheckboxField({
    Key? key,
    required ApplicationField applicationField,
    required S s,
    required void Function(List<String>) onChanged,
  }) : super(
          key: key,
          autovalidateMode: AutovalidateMode.disabled,
          validator: applicationField.isRequired
              ? (value) {
                  if (value == null || value.isEmpty) {
                    return s.fieldIsRequired;
                  }
                  return null;
                }
              : null,
          initialValue: [],
          onSaved: (List<String>? value) => onChanged(value ?? []),
          builder: (FormFieldState<List<String>> state) {
            final locale = Localizations.localeOf(state.context).languageCode;

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
                FormLabel(label: applicationField.getLabel(locale)),
                Container(
                  margin: const EdgeInsets.only(top: ContactForm.labelMargin),
                  child: Column(
                    children: applicationField.selects
                        .map((applicationFieldSelect) => CheckboxListTile(
                              controlAffinity: ListTileControlAffinity.leading,
                              title:
                                  Text(applicationFieldSelect.getName(locale)),
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
