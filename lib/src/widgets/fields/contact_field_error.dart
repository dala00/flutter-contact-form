import 'package:flutter/material.dart';

class ContactFieldError extends StatelessWidget {
  const ContactFieldError({
    Key? key,
    required this.message,
  }) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    return Text(
      message,
      style: TextStyle(
        color: Theme.of(context).errorColor,
        fontSize: 12,
      ),
    );
  }
}
