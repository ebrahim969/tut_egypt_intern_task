import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tut_egypt/core/utils/assets.dart';
import 'package:tut_egypt/core/utils/styles.dart';
import 'package:tut_egypt/features/home/data/categories_model.dart';

class CustomCategoriesListItem extends StatelessWidget {
  const CustomCategoriesListItem({
    super.key,
    required this.model,
  });
  final CategoriesModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.h,
      width: 104.w,
      padding: const EdgeInsets.only(
        left: 5,
      ),
      margin: const EdgeInsets.only(
        left: 16,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: const DecorationImage(
              image: AssetImage(Assets.imagesCategories), fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            model.title,
            style: Styles.poppins50014,
          ),
        ],
      ),
    );
  }
}
