import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tut_egypt/core/utils/assets.dart';
import 'package:tut_egypt/core/utils/colors.dart';
import 'package:tut_egypt/features/home/presentation/components/custom_search_text_feild.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          const Expanded(child: CustomSearchTxetFeild()),
          SizedBox(
            width: 8.w,
          ),
          Container(
            height: 37.h,
            width: 37.w,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.borderColor,
            ),
            child: const Center(
              child: Icon(Icons.tune),
            ),
          ),
          SizedBox(
            width: 8.w,
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              SvgPicture.asset(Assets.imagesNotification),
              const Positioned(
                  top: -1,
                  right: -1,
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor: AppColors.socendryColor,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
