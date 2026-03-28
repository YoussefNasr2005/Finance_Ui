import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum ButtonType { elevated, outlined }

class AppButtons extends StatelessWidget {
  final String buttonText;
  final Color? buttonOrSideColor, textColor;
  final double? width, height, buttonBorderRadius;
  final VoidCallback onPressed;
  final ButtonType type;

  const AppButtons({
    super.key,
    required this.buttonText,
    this.buttonOrSideColor,
    this.width,
    this.height,
    this.buttonBorderRadius,
    this.textColor,
    required this.onPressed,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.circular(buttonBorderRadius?.r ?? 8.r);

    if (type == ButtonType.elevated) {
      return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonOrSideColor ?? AppColors.primaryColor,
          fixedSize: Size(width ?? 331.w, height ?? 56.h),
          shape: RoundedRectangleBorder(borderRadius: radius),
        ),
        child: Text(
          buttonText,
          style: AppStyles.blackSemiBold16.copyWith(
            color: textColor ?? Colors.white,
            fontSize: 16.sp,
          ),
        ),
      );
    } else {
      return OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          fixedSize: Size(width ?? 331.w, height ?? 56.h),
          shape: RoundedRectangleBorder(borderRadius: radius),
          side: BorderSide(color: buttonOrSideColor ?? AppColors.primaryColor),
        ),
        child: Text(
          buttonText,
          style: AppStyles.blackSemiBold16.copyWith(
            color: textColor ?? const Color(0xFF617AFD),
            fontSize: 16.sp,
          ),
        ),
      );
    }
  }
}
