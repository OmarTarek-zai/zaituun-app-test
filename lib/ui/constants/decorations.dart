import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Decorations {
  static BoxDecoration get mainWhiteButton => BoxDecoration(
        color: Colors.white,
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
