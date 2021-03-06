import 'package:flutter/material.dart';

class TextFieldWrapper extends StatelessWidget {
  final Widget child;

  const TextFieldWrapper({Key key, @required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 56,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 5),
              spreadRadius: -1,
              blurRadius: 1,
            )
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: child);
  }
}
