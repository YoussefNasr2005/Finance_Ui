import 'package:finance_ui/core/app_widgets/chart_backage.dart';
import 'package:finance_ui/core/app_widgets/custom_finance_item.dart';
import 'package:finance_ui/core/app_widgets/second_top_features.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class StatisticPage extends StatelessWidget {
  const StatisticPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            SizedBox(height: 16.h),
            SecondTopFeatures(
              centerText: "Reload",
              rightIcon: Icons.more_horiz,

              colorRightIcon: colorScheme.onSurface,
            ),
            SizedBox(height: 24.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Jan 28 - May 28, 2025',
                  style: AppStyles.greyMedium12.copyWith(
                    fontSize: 14.sp,

                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12.sp, vertical: 8),
                  height: 38.h,
                  width: 101.w,
                  decoration: BoxDecoration(
                    color: colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Monthly',
                        style: AppStyles.blackSemiBold16.copyWith(
                          fontSize: 14,
                     
                          color: colorScheme.onPrimaryContainer,
                        ),
                      ),
                      SizedBox(width: 4.w),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,

                        color: colorScheme.onPrimaryContainer,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            BarChartSample2(),
            SizedBox(height: 16.h),
            Expanded(
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16.sp,
                  crossAxisSpacing: 16.sp,
                ),
                children: [
                  CustomFinanceItem(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    title: "15000 EG",
                    description: "Income",
                    icon: SvgPicture.asset('assets/icons/receive.svg'),
                  ),
                  CustomFinanceItem(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    title: "35000 EG",
                    description: "Outcome",
                    icon: SvgPicture.asset('assets/icons/send.svg'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
