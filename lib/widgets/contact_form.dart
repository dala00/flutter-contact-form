library contact_form;

import 'package:contact_form/models/application_field.dart';
import 'package:contact_form/use_cases/get_application_use_case.dart';
import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({
    Key? key,
    required this.applicationKey,
  }) : super(key: key);

  final String applicationKey;

  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  List<ApplicationField> _applicationFields = [];

  @override
  void initState() {
    super.initState();
    _initialize();
  }

  Future<void> _initialize() async {
    final applicationFields =
        await GetApplicationUseCase(widget.applicationKey).invoke();
    setState(() {
      _applicationFields = applicationFields;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: _applicationFields
            .map((applicationField) => Text(applicationField.label))
            .toList());
  }
}
