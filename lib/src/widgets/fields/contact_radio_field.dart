import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../../models/application_field.dart';
import '../contact_form.dart';
import 'contact_field_error.dart';
import 'form_label.dart';

class ContactRadioField extends FormField<String> {
  ContactRadioField({
    Key? key,
    required ApplicationField applicationField,
    required S s,
    required void Function(String?) onChanged,
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
          initialValue: null,
          onSaved: onChanged,
          builder: (FormFieldState<String> state) {
            final locale = Localizations.localeOf(state.context).languageCode;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormLabel(label: applicationField.getLabel(locale)),
                Container(
                  margin: const EdgeInsets.only(top: ContactForm.labelMargin),
                  child: Column(
                    children: applicationField.selects
                        .map((applicationFieldSelect) => RadioListTile(
                              title:
                                  Text(applicationFieldSelect.getName(locale)),
                              value: applicationFieldSelect.id,
                              groupValue: state.value,
                              dense: true,
                              contentPadding: EdgeInsets.zero,
                              onChanged: (String? value) {
                                state.didChange(value);
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
