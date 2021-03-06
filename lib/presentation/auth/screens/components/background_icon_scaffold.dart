import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BackGroundIconScaffold extends StatelessWidget {
  const BackGroundIconScaffold({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 5,
        child: Container(
            padding: const EdgeInsets.all(10),
            child: SvgPicture.asset('assets/svgs/login_back.svg')));
  }
}
