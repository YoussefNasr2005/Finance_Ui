import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrLoginWithWidet extends StatelessWidget {
  const OrLoginWithWidet({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Row(
      children: [
        SizedBox(width: 100.w, child: Divider()),
        SizedBox(width: 12.w),
        Text(
          'Or Login with',
          style: AppStyles.greyMedium12.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
        ),
        SizedBox(width: 12.w),
        SizedBox(width: 100.w, child: Divider()),
      ],
    );
  }
}
