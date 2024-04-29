import 'package:flutter/material.dart';
import 'package:tut_egypt/features/auth/sign_up/sections/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: SignUpViewBody()
    ));
  }
}