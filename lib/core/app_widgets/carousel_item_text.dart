import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum CardType { roundedCard, container }

class CustomCarouselText extends StatelessWidget {
  final String? cardName, balance, pounds, serNumber, date;
  final double? height1, height2, width;
  final bool? isContainer;

  const CustomCarouselText({
    super.key,
    this.cardName,
    this.balance,
    this.pounds,
    this.serNumber,
    this.date,
    this.height1,
    this.height2,
    this.width,
    this.isContainer,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        isContainer == false
            ? Text(
                cardName ?? 'X-Card',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffFDFDFD),
                ),
              )
            : Stack(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        cardName ?? 'X-Card',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffFDFDFD),
                        ),
                      ),
                      Spacer(),
                      Image.asset('assets/icons/Group-1.png'),
                      Image.asset('assets/icons/Group.png'),
                      Image.asset('assets/icons/Group-3.png'),
                      Image.asset('assets/icons/Group-4.png'),
                    ],
                  ),

                  Positioned(
                    right: 45,
                    top: 0,
                    child: Image.asset('assets/icons/Group-2.png'),
                  ),
                ],
              ),
        SizedBox(height: height1 ?? 57.h),
        Text(
          balance ?? 'Balance',
          style: AppStyles.greyMedium12.copyWith(color: Color(0xffFDFDFD)),
        ),
        SizedBox(height: 8.h),
        Text(
          pounds ?? '23400 EG',
          style: AppStyles.blackSemiBold16.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 24,
          ),
        ),
        SizedBox(height: height2 ?? 60.h),
        Row(
          children: [
            Text(
              serNumber ?? '****  3434',
              style: AppStyles.greyMedium12.copyWith(
                fontSize: 16,
                color: Color(0xffFDFDFD),
              ),
            ),
            Spacer(),
            Text(
              date ?? '12/24',
              style: AppStyles.greyMedium12.copyWith(color: Color(0xffFDFDFD)),
            ),
          ],
        ),
      ],
    );
  }
}
