import 'package:flutter/material.dart';

import '../../config/constants.dart';
import 'components/custom_search_field.dart';

part 'customappbar_slivertype.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          _CustomAppBarSliverType(
            title: "Crowdly",
            settingsfunction: () {
              //Log out button for now
            },
          ),
          CustomSearchField(size: size),
        ],
      ),
    );
  }
}
