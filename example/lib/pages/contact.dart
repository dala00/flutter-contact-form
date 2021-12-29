import 'package:contact_form/widgets/contact_form.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plugin example app'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(20),
            child: const ContactForm(
              applicationKey: 'de51a72b-19b7-40ba-bcb4-86c6ed9453bd',
            ),
          ),
        ),
      ),
    );
  }
}
