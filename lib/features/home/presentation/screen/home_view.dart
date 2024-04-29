import 'package:flutter/material.dart';
import 'package:tut_egypt/features/home/presentation/sections/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: HomeViewBody(),
    ));
  }
}
