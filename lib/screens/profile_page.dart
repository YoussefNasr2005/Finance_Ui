import 'package:finance_ui/core/app_widgets/second_top_features.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.h),
            SecondTopFeatures(),
            SizedBox(height: 39.h),
            Align(
              alignment: Alignment.center,
              child: ClipOval(
                child: Image.asset(
                  'assets/images/MyPhoto.jpg',
                  height: 100.w,
                  width: 100.w,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            SizedBox(height: 9.h),
            Text(
              'Full Name',
              style: AppStyles.greyMedium12.copyWith(
                fontSize: 14.sp,
                color: colorScheme.onSurfaceVariant,
              ),
            ),
            SizedBox(height: 6.h),
            Text(
              'Youssef Nasr',
              style: AppStyles.blackSemiBold16.copyWith(
                fontSize: 24.sp,
                fontWeight: FontWeight.w500,
                color: colorScheme.onSurface,
              ),
            ),
            SizedBox(height: 16.h),
            Divider(
              thickness: 1,
              color: colorScheme.outline.withValues(alpha: 0.3),
            ),
            SizedBox(height: 16.h),
            Text(
              'Email',
              style: AppStyles.greyMedium12.copyWith(
                fontSize: 14.sp,
                color: colorScheme.onSurfaceVariant,
              ),
            ),
            SizedBox(height: 6.h),
            Text(
              'youssefnasr2005date@gmail.com',
              style: AppStyles.blackSemiBold16.copyWith(
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                color: colorScheme.onSurface,
              ),
            ),
            SizedBox(height: 16.h),
            Divider(
              thickness: 1,
              color: colorScheme.outline.withValues(alpha: 0.3),
            ),
            SizedBox(height: 16.h),
            Text(
              'Phone Number',
              style: AppStyles.greyMedium12.copyWith(
                fontSize: 14.sp,
                color: colorScheme.onSurfaceVariant,
              ),
            ),
            SizedBox(height: 6.h),
            Text(
              '+20 1006078458',
              style: AppStyles.blackSemiBold16.copyWith(
                fontSize: 24.sp,
                fontWeight: FontWeight.w500,
                color: colorScheme.onSurface,
              ),
            ),
            SizedBox(height: 16.h),
            Divider(
              thickness: 1,
              color: colorScheme.outline.withValues(alpha: 0.3),
            ),
            SizedBox(height: 16.h),
            Text(
              'Address',
              style: AppStyles.greyMedium12.copyWith(
                fontSize: 14.sp,
                color: colorScheme.onSurfaceVariant,
              ),
            ),
            SizedBox(height: 6.h),
            Text(
              'Tanta,Egypt',
              style: AppStyles.blackSemiBold16.copyWith(
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                color: colorScheme.onSurface,
              ),
            ),
            SizedBox(height: 16.h),
            Divider(
              thickness: 1,
              color: colorScheme.outline.withValues(alpha: 0.3),
            ),
          ],
        ),
      ),
    );
  }
}
