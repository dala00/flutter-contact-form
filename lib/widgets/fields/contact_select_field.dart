import 'package:contact_form/generated/l10n.dart';
import 'package:contact_form/models/application_field.dart';
import 'package:contact_form/widgets/contact_form.dart';
import 'package:contact_form/widgets/fields/form_label.dart';
import 'package:flutter/material.dart';

class ContactSelectField extends StatelessWidget {
  const ContactSelectField({
    Key? key,
    required this.applicationField,
    required this.value,
    required this.s,
    required this.onChanged,
  }) : super(key: key);

  final ApplicationField applicationField;
  final String? value;
  final S s;
  final void Function(String?) onChanged;

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context).languageCode;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FormLabel(label: applicationField.getLabel(locale)),
        Container(
          margin: const EdgeInsets.only(top: ContactForm.labelMargin),
          child: DropdownButtonFormField<String?>(
            value: value,
            validator: (String? currentValue) {
              if (currentValue == null) {
                return s.fieldIsRequired;
              }
              return null;
            },
            onChanged: onChanged,
            items: [
              const DropdownMenuItem(
                value: null,
                child: Text(''),
              ),
              ...applicationField.selects
                  .map((select) => DropdownMenuItem(
                        value: select.id,
                        child: Text(select.getName(locale)),
                      ))
                  .toList(),
            ],
          ),
        ),
      ],
    );
  }
}
