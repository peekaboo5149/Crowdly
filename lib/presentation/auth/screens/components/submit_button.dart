import 'package:flutter/material.dart';

import '../../../config/constants.dart';

class SubmitInputButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const SubmitInputButton({Key key, @required this.onTap, @required this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: blueColor,
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontFamily: "RocknRollOne",
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
