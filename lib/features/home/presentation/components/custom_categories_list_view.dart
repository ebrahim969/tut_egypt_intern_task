import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tut_egypt/features/home/data/categories_model.dart';
import 'package:tut_egypt/features/home/presentation/components/custom_categories_list_view_item.dart';

class CustomCategoriesListView extends StatelessWidget {
  const CustomCategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: titles.length,
          itemBuilder: ((context, index) {
            return CustomCategoriesListItem(
              model: titles[index],
            );
          })),
    );
  }
}
