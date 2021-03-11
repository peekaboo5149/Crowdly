import 'package:flutter/material.dart';

import 'presentation/config/constants.dart';
import 'presentation/exports/exports.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crowdly',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: kappbartheme,
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}
