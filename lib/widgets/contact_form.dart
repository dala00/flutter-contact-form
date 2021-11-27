import 'package:contact_form/models/contact_field_data.dart';
import 'package:contact_form/use_cases/get_application_use_case.dart';
import 'package:contact_form/use_cases/post_contact_use_case.dart';
import 'package:contact_form/widgets/fields/contact_field.dart';
import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({
    Key? key,
    required this.applicationKey,
  }) : super(key: key);

  final String applicationKey;

  static const double labelMargin = 8;

  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  List<ContactFieldData> _contactFieldDataList = [];

  static const double fieldMargin = 12;

  @override
  void initState() {
    super.initState();
    _initialize();
  }

  Future<void> _initialize() async {
    final applicationFields =
        await GetApplicationUseCase(widget.applicationKey).invoke();
    setState(() {
      _contactFieldDataList = applicationFields
          .map((applicationField) => ContactFieldData(
                applicationField: applicationField,
                textEditingController: TextEditingController(),
              ))
          .toList();
    });
  }

  Future<void> _submit() async {
    await PostContactUseCase(widget.applicationKey)
        .invoke(_contactFieldDataList);
  }

  Widget _buildFields() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _contactFieldDataList
            .map(
              (contactFieldData) => Container(
                margin: const EdgeInsets.only(bottom: fieldMargin),
                child: ContactField(
                  contactFieldData: contactFieldData,
                ),
              ),
            )
            .toList());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildFields(),
        Container(
          margin: const EdgeInsets.only(top: 20),
          width: double.infinity,
          child: ElevatedButton(
            onPressed: _submit,
            child: const Text('Submit'),
          ),
        ),
      ],
    );
  }
}
