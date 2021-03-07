import '../config/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 0.0,
            title: Text(
              "Crowdly",
              style: TextStyle(
                color: blueColor,
                letterSpacing: 1.5,
                fontFamily: "RocknRollOne",
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            leading: IconButton(
              icon: const Icon(Icons.list),
              onPressed: () {},
            ),
            actions: [
              IconButton(icon: const Icon(Icons.settings), onPressed: () {})
            ],
          )
        ],
      ),
    );
  }
}
