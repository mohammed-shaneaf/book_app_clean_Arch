import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextEditingController? controller;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.obscureText = false,
    this.keyboardType,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.r)),
      ),
    );
  }
}
