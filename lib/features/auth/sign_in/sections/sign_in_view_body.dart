import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tut_egypt/core/utils/assets.dart';
import 'package:tut_egypt/features/auth/sign_in/sections/custom_sign_in_form.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 78.h,
          ),
        ),
        SliverToBoxAdapter(
          child: Image.asset(
            Assets.imagesSignInImage,
            height: 240.h,
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 64.h,
          ),
        ),
        const SliverToBoxAdapter(child: CustomSignInForm()),
      ],
    );
  }
}
