import 'package:contact_form/generated/l10n.dart';
import 'package:contact_form/models/contact_field_data.dart';
import 'package:contact_form/use_cases/get_application_use_case.dart';
import 'package:contact_form/use_cases/post_contact_use_case.dart';
import 'package:contact_form/widgets/fields/contact_field.dart';
import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({
    Key? key,
    required this.applicationKey,
    this.loading,
    this.onSubmittionStarted,
    this.onCompleted,
  }) : super(key: key);

  final String applicationKey;
  final Widget? loading;
  final void Function()? onSubmittionStarted;
  final void Function()? onCompleted;

  static const double labelMargin = 8;

  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _formKey = GlobalKey<FormState>();
  List<ContactFieldData> _contactFieldDataList = [];
  bool _isInitialized = false;
  bool _isSending = false;
  late S _s;

  static const double fieldMargin = 20;

  @override
  void initState() {
    super.initState();
    _initialize();
  }

  Future<void> _initialize() async {
    final applicationFields =
        await GetApplicationUseCase(widget.applicationKey).invoke();
    final s = await S.load(Localizations.localeOf(context));
    setState(() {
      _contactFieldDataList = applicationFields
          .map((applicationField) => ContactFieldData(
                applicationField: applicationField,
                textEditingController: TextEditingController(),
              ))
          .toList();
      _s = s;
      _isInitialized = true;
    });
  }

  Future<void> _submit() async {
    if (_formKey.currentState!.validate() != true) {
      return;
    }

    setState(() {
      _isSending = true;
    });
    widget.onSubmittionStarted?.call();

    await PostContactUseCase(widget.applicationKey).invoke(
      contactFieldDataList: _contactFieldDataList,
      locale: Localizations.localeOf(context).languageCode,
    );

    setState(() {
      _isSending = false;
    });
    widget.onCompleted?.call();
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
                  s: _s,
                  onChanged: (dynamic value) {
                    setState(() {
                      contactFieldData.value = value;
                    });
                  },
                ),
              ),
            )
            .toList());
  }

  @override
  Widget build(BuildContext context) {
    if (!_isInitialized) {
      if (widget.loading != null) {
        return widget.loading!;
      }

      return const Center(child: CircularProgressIndicator());
    }

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildFields(),
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _isSending ? null : _submit,
              child: Text(_s.submit),
            ),
          ),
        ],
      ),
    );
  }
}
