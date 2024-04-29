import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tut_egypt/core/utils/colors.dart';
import 'package:tut_egypt/core/utils/strings.dart';
import 'package:tut_egypt/core/utils/styles.dart';
import 'package:tut_egypt/features/home/data/product_model.dart';

class CustomMostPopularItem extends StatelessWidget {
  const CustomMostPopularItem({super.key, required this.model});

  final ProductModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 238.h,
      width: 141.w,
      margin: const EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.greyColor),
          borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 109.h,
              width: 109.w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(model.image), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(5)),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              model.title ?? AppStrings.nikeAirMaxReactENG,
              style: Styles.poppins70012,
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              "\$299,43",
              style:
                  Styles.poppins70012.copyWith(color: AppColors.primaryColor),
            ),
            SizedBox(
              height: 8.h,
            ),
            Row(
              children: [
                Text(
                  "\$534,33",
                  style: Styles.poppins40010
                      .copyWith(decoration: TextDecoration.lineThrough),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Text("24% Off",
                    style: Styles.poppins40010
                        .copyWith(color: AppColors.socendryColor)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
