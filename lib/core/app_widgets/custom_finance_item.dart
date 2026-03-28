import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomFinanceItem extends StatelessWidget {
  final Widget? icon;
  final String? title, description;
  final CrossAxisAlignment? crossAxisAlignment;
  final MainAxisAlignment? mainAxisAlignment;
  const CustomFinanceItem({
    super.key,
    this.icon,
    this.title,
    this.description,
    this.crossAxisAlignment,
    this.mainAxisAlignment,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: colorScheme.outline.withValues(alpha: 0.3),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.w),
        child: Column(
          mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
          crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
          children: [
            Container(
              width: 48.w,
              height: 48.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: icon ?? SvgPicture.asset('assets/icons/telegram.svg'),
            ),
            SizedBox(height: 16.h),

            Text(
              title ?? 'Send money',
              style: AppStyles.blackSemiBold16.copyWith(
                color: colorScheme.onSurface,
              ),
            ),
            SizedBox(height: 4.h),

            Text(
              description ?? 'Take acc to acc',
              style: AppStyles.greyMedium12.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
