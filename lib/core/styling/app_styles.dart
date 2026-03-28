import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_fonts.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  static TextStyle primaryHeadLineStyle = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 30.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );

  static TextStyle subTitleStyle = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w200,
    color: AppColors.secondryColor,
  );
  static TextStyle blackSemiBold16 = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.blackColor,
  );
  static TextStyle greyMedium12 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.greyColor,
  );
}
