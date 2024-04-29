import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tut_egypt/core/utils/assets.dart';
import 'package:tut_egypt/core/utils/strings.dart';
import 'package:tut_egypt/core/utils/styles.dart';
import 'package:tut_egypt/features/home/presentation/components/custom_slider_indecator.dart';

class CustomSliderSection extends StatelessWidget {
  const CustomSliderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 23),
          height: 147.h,
          width: 335.w,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage(Assets.imagesSlider), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.superFlashSale,
                style: Styles.poppins70014.copyWith(fontSize: 24),
              ),
              Text(
                "40% off",
                style: Styles.poppins70014.copyWith(fontSize: 24),
              )
            ],
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        sliderIndecator(1),
      ],
    );
  }
}
