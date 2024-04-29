import 'package:flutter/material.dart';
import 'package:tut_egypt/features/auth/sign_in/sections/sign_in_view_body.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: SignInViewBody(),
    ));
  }
}
