import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialIconButton extends StatelessWidget {
  final String path;
  final VoidCallback onTap;
  const SocialIconButton({
    Key key,
    @required this.path,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(
        path,
      ),
    ));
  }
}
