import 'package:flutter/material.dart';

import '../../../config/constants.dart';

class Register extends StatelessWidget {
  final VoidCallback onTap;
  const Register({
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
            "Dont have a account?",
            style: TextStyle(
              color: blueColor.withGreen(177),
              fontFamily: "RocknRollOne",
              fontSize: 12,
            ),
          ),
        ),
        const SizedBox(width: 16),
      ],
    );
  }
}
