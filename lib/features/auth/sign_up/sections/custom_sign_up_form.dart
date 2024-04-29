import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tut_egypt/core/functions/navigation.dart';
import 'package:tut_egypt/core/utils/assets.dart';
import 'package:tut_egypt/core/utils/colors.dart';
import 'package:tut_egypt/core/utils/strings.dart';
import 'package:tut_egypt/core/utils/styles.dart';
import 'package:tut_egypt/features/auth/components/custom_btn.dart';
import 'package:tut_egypt/features/auth/components/custom_txt_feild.dart';

class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          CustomTextFeild(
              hinttext: AppStrings.fullName,
              prefixIcon: Image.asset(Assets.imagesPerson)),
          SizedBox(
            height: 12.h,
          ),
          CustomTextFeild(
              hinttext: AppStrings.yourEmail,
              prefixIcon: Image.asset(Assets.imagesEmail)),
          SizedBox(
            height: 12.h,
          ),
          CustomTextFeild(
              hinttext: AppStrings.password,
              prefixIcon: Image.asset(Assets.imagesPassword)),
          SizedBox(
            height: 12.h,
          ),
          CustomTextFeild(
              hinttext: AppStrings.phone,
              prefixIcon: Image.asset(Assets.imagesPassword)),
          SizedBox(
            height: 16.h,
          ),
          CustomButton(
            text: AppStrings.signUp,
            onPressed: () {
              customNavigate(context, "/MainScreen");
            },
          ),
          SizedBox(
            height: 24.h,
          ),
          Text.rich(TextSpan(children: [
            TextSpan(
                text: AppStrings.haveanaccount,
                style:
                    Styles.poppins70012.copyWith(color: AppColors.greyColor)),
            TextSpan(
                text: AppStrings.signIn,
                style:
                    Styles.poppins70012.copyWith(color: AppColors.primaryColor))
          ])),
          SizedBox(
            height: 24.h,
          ),
        ],
      ),
    );
  }
}
