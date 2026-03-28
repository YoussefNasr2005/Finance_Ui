import 'package:finance_ui/core/app_widgets/carousel_item_text.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselItem extends StatelessWidget {
  final double? containerHeight,
      containerWidth,
      bottom,
      left,
      layer1Height,
      layer1Width,
      layer2Height,
      layer2Width;

  final String? cardName, balance, pounds, serNumber, date;
  final Color? color;
  final bool? isContainer;
  const CarouselItem({
    super.key,
    this.containerHeight,
    this.containerWidth,
    this.bottom,
    this.left,
    this.layer1Height,
    this.layer1Width,
    this.layer2Height,
    this.layer2Width,
    this.color,
    this.cardName,
    this.balance,
    this.pounds,
    this.serNumber,
    this.date,
    this.isContainer,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: containerWidth ?? 207.w,
          height: containerHeight ?? 263.h,
          decoration: BoxDecoration(
            color: color ?? AppColors.primaryColor,
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        Positioned(
          bottom: bottom ?? 0,
          left: left ?? 0,
          child: Image.asset(
            'assets/images/Layer1.png',
            height: layer1Height ?? 153.h,
            width: layer1Width ?? 153.w,
          ),
        ),
        Positioned(
          bottom: bottom ?? 0,
          left: left ?? 0,
          child: Image.asset(
            'assets/images/Layer2.png',
            height: layer2Height ?? 200.h,
            width: layer2Width ?? 200.w,
          ),
        ),
        Positioned(
          bottom: bottom ?? 0,
          left: left ?? 0,
          child: Image.asset(
            'assets/images/Layer1.png',
            height: layer1Height ?? 153.h,
            width: layer1Width ?? 153.w,
          ),
        ),
        Positioned(
          bottom: bottom ?? 0,
          left: left ?? 0,
          child: Image.asset(
            'assets/images/Layer2.png',
            height: layer2Height ?? 200.h,
            width: layer2Width ?? 200.w,
          ),
        ),
        Positioned(
          top: 24,
          left: 24,
          right: 24,
          child: CustomCarouselText(
            cardName: cardName,
            isContainer: isContainer,
            balance: balance,
            pounds: pounds,
            serNumber: serNumber,
            date: date,
            height1: 18.h,
            height2: 22.h,
            width: 156.w,
          ),
        ),
      ],
    );
  }
}
