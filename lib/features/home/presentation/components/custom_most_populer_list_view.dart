import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tut_egypt/features/home/data/product_model.dart';
import 'package:tut_egypt/features/home/presentation/components/custom_most_popular_item.dart';

class CustomMostPopulerListView extends StatelessWidget {
  const CustomMostPopulerListView({super.key, required this.products});

  final List<ProductModel> products;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context, index) {
            return CustomMostPopularItem(model: products[index]);
          }),
    );
  }
}