import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tut_egypt/core/router/app_router.dart';

void main() {
  runApp(const TutEgyptApp());
}

class TutEgyptApp extends StatelessWidget {
  const TutEgyptApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(fontFamily: "Poppins"),
          routerConfig: routes,
        );
      },
    );
  }
}
