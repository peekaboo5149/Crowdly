import 'package:crowdly/presentation/auth/screens/login_screen.dart';
import 'package:flutter/material.dart';

import 'presentation/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(
              color: Colors.black54,
            ),
          ),
          primarySwatch: Colors.blue,
        ),
        home: LoginScreen());
  }
}
