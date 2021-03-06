import 'package:flutter/material.dart';

class LoginWidgets extends StatelessWidget {
  final List<Widget> children;
  const LoginWidgets({
    Key key,
    @required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 4,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            children: children,
          ),
        ));
  }
}
