import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tut_egypt/core/utils/colors.dart';

Widget sliderIndecator(var activeIndex) {
  return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: 3,
      effect: SwapEffect(
        dotColor: Colors.grey.withOpacity(.2),
        activeDotColor: AppColors.primaryColor,
      ));
}
