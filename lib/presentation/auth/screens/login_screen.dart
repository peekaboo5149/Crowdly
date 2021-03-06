import 'package:flutter/material.dart';

import 'components/background_icon_scaffold.dart';
import 'components/email_textfield.dart';
import 'components/forgot_password.dart';
import 'components/login_widget.dart';
import 'components/password_textfield.dart';
import 'components/register_widget.dart';
import 'components/socail_icon_button.dart';
import 'components/submit_button.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: size.width,
              height: size.height,
              child: Column(
                children: [
                  const BackGroundIconScaffold(),
                  LoginWidgets(
                    children: [
                      EmailTextField(),
                      const SizedBox(height: 10),
                      PasswordTextField(),
                      const SizedBox(height: 10),
                      ForgotPassword(onTap: () {}),
                      const SizedBox(height: 20),
                      SubmitInputButton(text: "Log in", onTap: () {}),
                      const SizedBox(height: 6),
                      Register(onTap: () {}),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Container(
                          child: Row(
                            children: [
                              const Spacer(),
                              SocialIconButton(
                                onTap: () {},
                                path: "assets/svgs/google.svg",
                              ),
                              SocialIconButton(
                                  path: "assets/svgs/facebook.svg",
                                  onTap: () {}),
                              const Spacer(),
                            ],
                          ),
                        ),
                      ))
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
