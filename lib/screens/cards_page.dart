import 'package:finance_ui/core/app_widgets/carousel_item_ui.dart';
import 'package:finance_ui/core/app_widgets/second_top_features.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CardsPage extends StatelessWidget {
  const CardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            SizedBox(height: 16.h),
            SecondTopFeatures(
              centerText: "All Cards",
              rightIcon: Icons.more_horiz,
              colorRightIcon: Color(0xff000000),
            ),
            SizedBox(height: 24.h),
            CarouselItem(
              isContainer: true,
              containerHeight: 179.h,
              containerWidth: 327.w,
              layer1Height: 80,
              layer1Width: 200,
              layer2Height: 190,
              layer2Width: 270,
            ),
            SizedBox(height: 24.h),
            CarouselItem(
              isContainer: true,
              color: Colors.indigo,
              cardName: "X-Card",
              pounds: "3209 EG",
              serNumber: "****  4545",
              containerHeight: 179.h,
              containerWidth: 327.w,
              layer1Height: 80,
              layer1Width: 200,
              layer2Height: 190,
              layer2Width: 270,
            ),
          ],
        ),
      ),
    );
  }
}
