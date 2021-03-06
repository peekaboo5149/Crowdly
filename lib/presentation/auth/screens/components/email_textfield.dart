import 'package:flutter/material.dart';

import 'text_field_wrapper.dart';

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
