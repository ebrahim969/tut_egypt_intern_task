import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tut_egypt/core/utils/strings.dart';
import 'package:tut_egypt/features/home/data/product_model.dart';
import 'package:tut_egypt/features/home/presentation/components/custom_home_app_bar.dart';
import 'package:tut_egypt/features/home/presentation/sections/custom_about_us_section.dart';
import 'package:tut_egypt/features/home/presentation/sections/custom_categories_section.dart';
import 'package:tut_egypt/features/home/presentation/sections/custom_most_populer_section.dart';
import 'package:tut_egypt/features/home/presentation/sections/custom_slider_section.dart';
import 'package:tut_egypt/features/home/presentation/sections/cutom_hot_deals_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16.h,
          ),
        ),
        const SliverToBoxAdapter(
          child: CustomHomeAppBar(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16.h,
          ),
        ),
        const SliverToBoxAdapter(
          child: CustomSliderSection(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16.h,
          ),
        ),
        const SliverToBoxAdapter(
          child: CustomCategoriesSection(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16.h,
          ),
        ),
        SliverToBoxAdapter(
          child: CustomMostPopulerSection(
            title: AppStrings.mostPopular,
            subTitle: AppStrings.seeMore,
            prosucts: mostPopularProducts,
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16.h,
          ),
        ),
        const SliverToBoxAdapter(
          child: CustomAboutUsSection(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16.h,
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16.h,
          ),
        ),
        SliverToBoxAdapter(
          child: CustomMostPopulerSection(
            title: AppStrings.mostPopularForWoman,
            subTitle: AppStrings.seeMore,
            prosucts: mostPopularProducts,
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16.h,
          ),
        ),
        SliverToBoxAdapter(
          child: CustomMostPopulerSection(
            title: AppStrings.mostPopularFormAN,
            subTitle: AppStrings.seeMore,
            prosucts: mostPopularProducts,
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16.h,
          ),
        ),
        const SliverToBoxAdapter(
          child: CustomHotDealsSection(),
        ),
      ],
    );
  }
}
