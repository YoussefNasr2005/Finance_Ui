import 'package:finance_ui/core/app_widgets/custom_carousel.dart';
import 'package:finance_ui/core/app_widgets/custom_finance_item.dart';
import 'package:finance_ui/core/app_widgets/top_profile_features.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            SizedBox(height: 18.h),
            TopProfileFeatures(),
            SizedBox(height: 24.h),
            CustomCarousel(),
            SizedBox(height: 24.h),
            Expanded(
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16.sp,
                  crossAxisSpacing: 16.sp,
                ),
                children: [
                  CustomFinanceItem(),
                  CustomFinanceItem(
                    title: "Pay the bill",
                    description: "Lorem ipsum",
                    icon: SvgPicture.asset('assets/icons/wallet.svg'),
                  ),
                  CustomFinanceItem(
                    title: "Request",
                    description: "Lorem ipsum",
                  ),
                  CustomFinanceItem(
                    title: "Contact",
                    description: "Lorem ipsum",
                    icon: SvgPicture.asset('assets/icons/friends.svg'),
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
