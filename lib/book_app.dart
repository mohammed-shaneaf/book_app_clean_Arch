import 'package:book_app_clean_arch/core/routes/app_router.dart';
import 'package:book_app_clean_arch/core/routes/routing_app.dart';
import 'package:book_app_clean_arch/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      ensureScreenSize: true,
      designSize: const Size(375, 812),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: AppColors.primaryColor, brightness: Brightness.dark),
        onGenerateRoute: RoutingApp.generateRoutes,
        initialRoute: AppRouter.splash,
      ),
    );
  }
}
