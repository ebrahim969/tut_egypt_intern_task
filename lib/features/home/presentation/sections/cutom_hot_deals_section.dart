import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tut_egypt/core/utils/strings.dart';
import 'package:tut_egypt/features/home/data/product_model.dart';
import 'package:tut_egypt/features/home/presentation/components/custom_list_view_header.dart';
import 'package:tut_egypt/features/home/presentation/components/custom_most_popular_item.dart';

class CustomHotDealsSection extends StatelessWidget {
  const CustomHotDealsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomListViewHeader(
          title: AppStrings.hotDeals,
          subTitle: AppStrings.seeMore,
        ),
        SizedBox(
          height: 8.h,
        ),
        CustomHotDealsGridView()
      ],
    );
  }
}

class CustomHotDealsGridView extends StatelessWidget {
  const CustomHotDealsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 550.h,
      child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: .7, mainAxisSpacing: 8),
          itemCount: hotDealsProducts.length,
          itemBuilder: ((context, index) {
            return CustomMostPopularItem(model: hotDealsProducts[index]);
          })),
    );
  }
}
