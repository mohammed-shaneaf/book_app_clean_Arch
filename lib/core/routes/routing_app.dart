import 'package:book_app_clean_arch/core/routes/app_router.dart';
import 'package:book_app_clean_arch/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

class RoutingApp {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case AppRouter.splash:
        return MaterialPageRoute(builder: (_) => SplashView());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
