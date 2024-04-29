import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tut_egypt/core/utils/assets.dart';
import 'package:tut_egypt/core/utils/colors.dart';
import 'package:tut_egypt/core/utils/strings.dart';
import 'package:tut_egypt/core/utils/styles.dart';
import 'package:tut_egypt/features/home/presentation/components/custom_list_view_header.dart';

class CustomAboutUsSection extends StatelessWidget {
  const CustomAboutUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomListViewHeader(title: AppStrings.aboutUs),
        Container(
          height: 171.h,
          width: 335.w,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage(Assets.imagesAboutUsImage),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppStrings.whoweare,
                  style: Styles.poppins70014.copyWith(fontSize: 24),
                ),
                Text(
                  AppStrings.lorem,
                  style: Styles.poppins40012.copyWith(color: Colors.white),
                ),
                SizedBox(
                  height: 13.h,
                ),
                Text(
                  AppStrings.readmore,
                  style: Styles.poppins40012
                      .copyWith(color: AppColors.primaryColor),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
