import 'package:book_app_clean_arch/core/routes/app_router.dart';
import 'package:book_app_clean_arch/core/utils/assets.dart';
import 'package:book_app_clean_arch/core/utils/custom_text_form_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: (Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            90.verticalSpace,
            Center(child: Image.asset(Assets.assetsImagesLogo, height: 100.h)),
            40.verticalSpace,
            Text('Welcome!', style: Theme.of(context).textTheme.headlineSmall),
            10.verticalSpace,
            Text(
              'Create your account',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            30.verticalSpace,
            CustomTextFormField(
              hintText: 'Name',
              keyboardType: TextInputType.emailAddress,
            ),
            20.verticalSpace,
            CustomTextFormField(
              hintText: 'Phone Number',
              keyboardType: TextInputType.emailAddress,
            ),
            20.verticalSpace,
            CustomTextFormField(
              hintText: 'Email',
              keyboardType: TextInputType.emailAddress,
            ),
            20.verticalSpace,
            CustomTextFormField(hintText: 'Password', obscureText: true),
            30.verticalSpace,
            SizedBox(
              width: double.infinity,
              height: 48.h,
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Register logic
                },
                child: const Text('Register'),
              ),
            ),
            30.verticalSpace,
            Center(
              child: RichText(
                text: TextSpan(
                  text: "Already have an account? ",
                  style: Theme.of(context).textTheme.bodyMedium,
                  children: [
                    TextSpan(
                      text: 'Login here!',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushNamed(context, AppRouter.login);
                        },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
