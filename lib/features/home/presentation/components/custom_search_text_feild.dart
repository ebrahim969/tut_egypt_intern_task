import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tut_egypt/core/utils/assets.dart';
import 'package:tut_egypt/core/utils/colors.dart';
import 'package:tut_egypt/core/utils/strings.dart';
import 'package:tut_egypt/core/utils/styles.dart';

class CustomSearchTxetFeild extends StatelessWidget {
  const CustomSearchTxetFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42.h,
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.primaryColor)),
      child: TextField(
        decoration: InputDecoration(
          hintText: AppStrings.searchProduct,
          hintStyle: Styles.poppins40012,
          prefixIcon: Image.asset(Assets.imagesSearchBar),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
