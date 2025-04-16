
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:study_practice_app/core/binding/binding.dart';
import 'package:study_practice_app/core/route/app_route.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          initialBinding: AppBinding(),
          debugShowCheckedModeBanner: false,
          title: 'Study Practice App',
          defaultTransition: Transition.leftToRight,
          transitionDuration: const Duration(milliseconds: 200),
          themeMode: ThemeMode.light,
          initialRoute: AppRoute.main,
          getPages: AppRoute.route,
          locale: const Locale("en", "US"),
          fallbackLocale: const Locale("en", "US"),
        );
      },
    );
  }
}
