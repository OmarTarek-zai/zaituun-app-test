import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zaituun/ui/constants/app_colors.dart';

class Decorations {
  static BoxDecoration get mainWhiteButton => BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
      );
  static BoxDecoration get mainWhiteButtonDisabled => BoxDecoration(
        color: AppColors.fadedGrey,
        borderRadius: BorderRadius.circular(10.r),
      );

  static BoxDecoration get secondaryWhiteButton => BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
          color: Colors.white,
          width: 2.spMin,
        ),
      );
}

class InputDecorations {
  static InputDecoration getFormInputField(String hintText) => InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: AppColors.fadedGrey),
        fillColor: Colors.white,
        filled: true,
        isCollapsed: true,
        contentPadding: EdgeInsets.symmetric(
          vertical: 10.spMin,
          horizontal: 12.spMin,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
            width: 1.spMin,
          ),
          borderRadius: BorderRadius.circular(8.spMin),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
            width: 1.spMin,
          ),
          borderRadius: BorderRadius.circular(8.spMin),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.fadedGrey,
            width: 1.spMin,
          ),
          borderRadius: BorderRadius.circular(8.spMin),
        ),
      );
}
