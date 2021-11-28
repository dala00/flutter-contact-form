import 'package:flutter/material.dart';

class FormLabel extends StatelessWidget {
  const FormLabel({Key? key, required this.label}) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(label);
  }
}
