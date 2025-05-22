import 'package:book_app_clean_arch/core/utils/app_styles.dart';
import 'package:book_app_clean_arch/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(Assets.assetsImagesLogo),
        Center(child: Text('Read Book For Free', style: AppStyles.textStyle18)),
      ],
    );
  }
}
