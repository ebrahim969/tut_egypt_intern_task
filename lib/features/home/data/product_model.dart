import 'package:tut_egypt/core/utils/assets.dart';
import 'package:tut_egypt/core/utils/strings.dart';

class ProductModel {
  final String image;
  final String? title;

  ProductModel({required this.image, this.title});
}

List<ProductModel> mostPopularProducts = [
  ProductModel(
      image: Assets.imagesPopularProduct1, title: AppStrings.fSNikeAirMaxReact),
  ProductModel(
      image: Assets.imagesMostPopularProduct2,
      title: AppStrings.fSQUILTEDMAXICROS),
  ProductModel(
      image: Assets.imagesHotDealsImage3, title: AppStrings.nikeAirMaxReactENG)
];

List<ProductModel> hotDealsProducts = [
  ProductModel(image: Assets.imagesHotDealsImage1),
  ProductModel(
    image: Assets.imagesHotDealsImage4,
  ),
  ProductModel(
    image: Assets.imagesHotDealsImage3,
  ),
  ProductModel(image: Assets.imagesHotDealsImage2),
];
