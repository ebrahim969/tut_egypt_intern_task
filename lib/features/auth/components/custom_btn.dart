import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tut_egypt/core/utils/colors.dart';
import 'package:tut_egypt/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.backgroundColor,
      this.borderRadius,
      required this.text,
      this.onPressed,
      this.height,
      this.width});

  final Color? backgroundColor;
  final BorderRadius? borderRadius;
  final String text;
  final void Function()? onPressed;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 57.h,
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor ?? AppColors.primaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(16))),
        onPressed: onPressed,
        child: Text(text, style: Styles.poppins70014),
      ),
    );
  }
}
