import 'package:book_app_clean_arch/core/routes/app_router.dart';
import 'package:book_app_clean_arch/core/utils/app_styles.dart';
import 'package:book_app_clean_arch/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  late final Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(vsync: this, duration: const Duration(seconds: 1));

    slidingAnimationInit();

    animationController.forward();

    navigationToLoginScreen();
  }

  @override
  void dispose() {
    animationController.dispose(); // Don't forget to dispose the controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(Assets.assetsImagesLogo),
        Center(
          child: SlideTransition(
            position: slidingAnimation,
            child: Text('Read Book For Free', style: AppStyles.textStyle18),
          ),
        ),
      ],
    );
  }

  Future<void> navigationToLoginScreen() {
    return Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, AppRouter.login);
    });
  }

  Animation<Offset> slidingAnimationInit() {
    return slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 2),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: animationController, curve: Curves.easeOut));
  }
}
