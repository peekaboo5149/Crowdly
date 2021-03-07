import 'package:flutter/material.dart';

import 'text_field_wrapper.dart';

class PasswordTextField extends StatelessWidget {
  final _notifier = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _notifier,
      builder: (_, ___, __) => TextFieldWrapper(
        child: TextField(
          obscureText: _notifier.value,
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: const Icon(Icons.lock),
            suffixIcon: IconButton(
                icon: !_notifier.value
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off),
                onPressed: () {
                  _notifier.value = !_notifier.value;
                }),
          ),
        ),
      ),
    );
  }
}
