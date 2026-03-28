import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:finance_ui/core/app_widgets/carousel_item_ui.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCarousel extends StatefulWidget {
  const CustomCarousel({super.key});

  @override
  State<CustomCarousel> createState() => _CustomCarousel();
}

class _CustomCarousel extends State<CustomCarousel> {
  double currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index.toDouble();
              });
            },
            height: 263.h,
            padEnds: false,
            viewportFraction: 0.7,
            enlargeCenterPage: true,
            enlargeFactor: 0.18,
          ),
          items: [
            CarouselItem(),
            CarouselItem(
              color: AppColors.primaryColor.withValues(alpha: 0.6),
              cardName: "M-Card",
              pounds: "3209 EG",
              serNumber: "****  4545",
            ),
            CarouselItem(),
          ],
        ),
        SizedBox(height: 16.h),
        DotsIndicator(
          dotsCount: 3,
          position: currentIndex,
          decorator: DotsDecorator(
            color: Color(0xffE3E9ED),
            activeColor: AppColors.primaryColor,
            spacing: EdgeInsets.symmetric(horizontal: 4.w),
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ],
    );
  }
}
