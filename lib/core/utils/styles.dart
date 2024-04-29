import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tut_egypt/core/utils/colors.dart';

abstract class Styles {
  static TextStyle poppins40012 = TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.greyColor,
      ),
      poppins70014 = TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
      poppins70012 = TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.titleItemColor,
      ),
      poppins50018 = TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.textColor,
      ),
      poppins50014 = TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      poppins40010 = TextStyle(
        fontSize: 10.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.greyColor,
      ),
      poppins70010 = TextStyle(
        fontSize: 10.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.socendryColor,
      );
}
