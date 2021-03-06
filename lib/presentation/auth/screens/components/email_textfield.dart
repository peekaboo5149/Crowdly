import 'text_field_wrapper.dart';
import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFieldWrapper(
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.email),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
