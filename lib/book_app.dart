import 'package:book_app_clean_arch/core/routes/app_router.dart';
import 'package:book_app_clean_arch/core/routes/routing_app.dart';
import 'package:flutter/material.dart';

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: RoutingApp.generateRoutes,
      initialRoute: AppRouter.splash,
    );
  }
}
