import 'package:contact_form/models/application_field.dart';
import 'package:contact_form/widgets/contact_form.dart';
import 'package:contact_form/widgets/fields/contact_field_error.dart';
import 'package:contact_form/widgets/fields/form_label.dart';
import 'package:flutter/material.dart';

class ContactSelectField extends FormField<String> {
  ContactSelectField({
    Key? key,
    required this.applicationField,
    required void Function(String?) onChanged,
  }) : super(
          key: key,
          autovalidateMode: AutovalidateMode.disabled,
          validator: applicationField.isRequired
              ? (value) {
                  if (value == null || value.isEmpty) {
                    return 'Select';
                  }
                  return null;
                }
              : null,
          initialValue: '',
          onSaved: onChanged,
          builder: (FormFieldState<String> state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormLabel(label: applicationField.label),
                Container(
                  margin: const EdgeInsets.only(top: ContactForm.labelMargin),
                  child: DropdownButton<String?>(
                    value: state.value,
                    onChanged: (value) {
                      state.didChange(value);
                      state.save();
                    },
                    items: [
                      const DropdownMenuItem(
                        value: '',
                        child: Text(''),
                      ),
                      ...applicationField.selects
                          .map((select) => DropdownMenuItem(
                                value: select.id,
                                child: Text(select.name),
                              ))
                          .toList(),
                    ],
                  ),
                ),
                state.hasError
                    ? const ContactFieldError(message: 'This field is required')
                    : Container(),
              ],
            );
          },
        );

  final ApplicationField applicationField;
}
