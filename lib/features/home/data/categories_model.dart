import 'package:tut_egypt/core/utils/strings.dart';

class CategoriesModel {
  final String title;

  CategoriesModel({required this.title});
}

List<CategoriesModel> titles = [
  CategoriesModel(title: AppStrings.accessories),
  CategoriesModel(title: AppStrings.clocks),
  CategoriesModel(title: AppStrings.furniture)
];
