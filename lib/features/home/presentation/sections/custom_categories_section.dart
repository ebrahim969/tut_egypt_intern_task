import 'package:flutter/material.dart';
import 'package:tut_egypt/core/utils/strings.dart';
import 'package:tut_egypt/features/home/presentation/components/custom_categories_list_view.dart';
import 'package:tut_egypt/features/home/presentation/components/custom_list_view_header.dart';

class CustomCategoriesSection extends StatelessWidget {
  const CustomCategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomListViewHeader(
            title: AppStrings.categories, subTitle: AppStrings.seeMore),
        SizedBox(
          height: 8,
        ),
        CustomCategoriesListView()
      ],
    );
  }
}


