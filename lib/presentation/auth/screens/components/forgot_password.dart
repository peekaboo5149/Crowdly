import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  final VoidCallback onTap;

  const ForgotPassword({
    Key key,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        GestureDetector(
          onTap: onTap,
          child: Text(
            "Forgot Password?",
            style: TextStyle(
              color: Theme.of(context).primaryColor.withOpacity(.8),
              fontStyle: FontStyle.italic,
              fontSize: 13,
            ),
          ),
        ),
        const SizedBox(width: 20),
      ],
    );
  }
}
