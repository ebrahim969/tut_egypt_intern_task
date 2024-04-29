import 'package:flutter/material.dart';
import 'package:tut_egypt/core/utils/colors.dart';
import 'package:tut_egypt/core/utils/styles.dart';

class CustomListViewHeader extends StatelessWidget {
  const CustomListViewHeader({
    super.key,
    required this.title,
    this.subTitle,
  });

  final String title;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Styles.poppins50018,
          ),
          Text(
            subTitle ?? "",
            style: Styles.poppins50014.copyWith(color: AppColors.primaryColor),
          )
        ],
      ),
    );
  }
}
