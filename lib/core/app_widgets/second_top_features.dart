import 'package:finance_ui/core/app_widgets/custom_icon_button.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SecondTopFeatures extends StatelessWidget {
  final IconData? rightIcon, leftIcon;
  final Color? colorRightIcon, colorLeftIcon;
  final String? centerText;
  const SecondTopFeatures({
    super.key,
    this.rightIcon,
    this.leftIcon,
    this.centerText,
    this.colorRightIcon,
    this.colorLeftIcon,
  });

 @override
Widget build(BuildContext context) {
  final colorScheme = Theme.of(context).colorScheme;

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      CustomIconButton(
        type: BorderType.circle,
        icon: leftIcon ?? Icons.arrow_back_ios_new,
        color: colorScheme.onSurface,
        onPressed: () {
          GoRouter.of(context).pushNamed(AppRoutes.mainSreen);
        },
      ),
      Text(
        centerText ?? 'My Profile',
        style: AppStyles.blackSemiBold16.copyWith(
          fontSize: 18.sp,
          color: colorScheme.onSurface,
        ),
      ),
      CustomIconButton(
        type: BorderType.circle,
        icon: rightIcon ?? Icons.note_alt_outlined,
        color: colorScheme.onSurface,
        onPressed: () {},
      ),
    ],
  );
}}