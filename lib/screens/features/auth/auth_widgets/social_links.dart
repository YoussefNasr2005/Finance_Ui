import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialLinksWidget extends StatelessWidget {
  final VoidCallback onTapSocialOne;
  final VoidCallback onTapSocialTwo;
  final VoidCallback onTapSocialThree;
  const SocialLinksWidget({
    super.key,
    required this.onTapSocialOne,
    required this.onTapSocialTwo,
    required this.onTapSocialThree,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: onTapSocialOne,
          child: Image.asset('assets/images/Facebook_Button.png'),
        ),
        SizedBox(width: 8.w),
        InkWell(
          onTap: onTapSocialTwo,
          child: Image.asset('assets/images/Google_Button.png'),
        ),
        SizedBox(width: 8.w),
        InkWell(
          onTap: onTapSocialThree,
          child: Image.asset('assets/images/Apple_Button.png'),
        ),
      ],
    );
  }
}
