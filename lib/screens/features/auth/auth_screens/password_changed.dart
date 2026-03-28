import 'package:finance_ui/core/app_widgets/app_buttons.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class PasswordChanged extends StatelessWidget {
  const PasswordChanged({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/Successmark.svg',
              width: 100.w,
              height: 100.h,
            ),
            SizedBox(height: 35.h),
            Text(
              'Password Changed!',
              style: AppStyles.primaryHeadLineStyle.copyWith(fontSize: 29.5),
            ),

            SizedBox(height: 8.h),
            Text(
              'Your password has been changed\n                   successfully.',
              style: AppStyles.blackSemiBold16.copyWith(
                fontSize: 15,
                color: Theme.of(context).colorScheme.inverseSurface,
              ),
            ),
            SizedBox(height: 40.h),
            AppButtons(
              buttonText: "Back to Login",
              onPressed: () {
                GoRouter.of(context).pushReplacementNamed(AppRoutes.login);
              },
              type: ButtonType.elevated,
            ),
          ],
        ),
      ),
    );
  }
}
