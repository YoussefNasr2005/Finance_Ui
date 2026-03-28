import 'package:finance_ui/core/app_widgets/custom_icon_button.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopProfileFeatures extends StatelessWidget {
  const TopProfileFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Row(
      children: [
        ClipOval(
          child: Image.asset(
            'assets/images/MyPhoto.jpg',
            width: 48.w,
            height: 48.w,
            fit: BoxFit.fitWidth,
          ),
        ),
        SizedBox(width: 11.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome back',
              style: AppStyles.greyMedium12.copyWith(
                // ✅ بدل Color(0xff9CA4AB)
                color: colorScheme.onSurfaceVariant,
                fontSize: 12,
              ),
            ),
            SizedBox(height: 2.h),
            Text(
              'Youssef Nasr',
              style: AppStyles.blackSemiBold16.copyWith(
                // ✅ بدل اللون الثابت
                color: colorScheme.onSurface,
                fontSize: 18,
              ),
            ),
          ],
        ),
        const Spacer(),
        CustomIconButton(
          type: BorderType.circle,
          icon: Icons.notifications,
          color: AppColors.primaryColor,
          onPressed: () {},
        ),
      ],
    );
  }
}
