import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tut_egypt/features/home/data/product_model.dart';
import 'package:tut_egypt/features/home/presentation/components/custom_list_view_header.dart';
import 'package:tut_egypt/features/home/presentation/components/custom_most_populer_list_view.dart';

class CustomMostPopulerSection extends StatelessWidget {
  const CustomMostPopulerSection(
      {super.key, required this.title, required this.subTitle, required this.prosucts});
  final String title, subTitle;
  final List<ProductModel> prosucts;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomListViewHeader(title: title, subTitle: subTitle),
        SizedBox(
          height: 8.h,
        ),
        CustomMostPopulerListView(
          products: prosucts,
        ),
      ],
    );
  }
}


