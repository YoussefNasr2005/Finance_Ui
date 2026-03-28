import 'dart:developer';
import 'package:finance_ui/core/app_widgets/app_buttons.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/routing/app_routes.dart';
import 'package:finance_ui/core/app_widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerifcation extends StatefulWidget {
  const OtpVerifcation({super.key});

  @override
  State<OtpVerifcation> createState() => _OtpVerifcation();
}

class _OtpVerifcation extends State<OtpVerifcation> {
  PinInputController pinInputController = PinInputController();
  @override
  void initState() {
    super.initState();
    pinInputController = PinInputController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 22.w, right: 22.w, top: 12.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 12.h),
              CustomIconButton(
                type: BorderType.rounded,
                color: AppColors.primaryColor,
                icon: Icons.arrow_back_ios_new,
                onPressed: () {
                  GoRouter.of(context).pop();
                },
              ),
              SizedBox(height: 28.h),
              SizedBox(
                width: 280.w,
                child: Text(
                  'OTP Verification',
                  style: AppStyles.primaryHeadLineStyle,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                'Enter the verification code we just sent on your email address.',
                style: AppStyles.blackSemiBold16.copyWith(
                  color: Color(0xff8391A1),
                ),
              ),
              SizedBox(height: 32.h),
              Align(
                child: MaterialPinField(
                  keyboardType: TextInputType.number,
                  pinController: pinInputController,
                  textInputAction: TextInputAction.go,
                  length: 4,
                  onCompleted: (pin) {
                    log('PIN: $pin');
                    GoRouter.of(context).pushReplacementNamed(AppRoutes.login);
                  },
                  onChanged: (value) => log('Changed: $value'),

                  theme: MaterialPinTheme(
                    textStyle: AppStyles.primaryHeadLineStyle.copyWith(
                      fontSize: 22.sp,
                    ),
                    shape: MaterialPinShape.outlined,
                    cellSize: Size(70.w, 60.h),
                    borderRadius: BorderRadius.circular(8),
                    fillColor: Color(0xffE8ECF4),
                    borderColor: AppColors.backgroundColor,
                    disabledColor: AppColors.blackColor,
                  ),
                ),
              ),

              SizedBox(height: 38.h),
              AppButtons(
                buttonText: 'Verify',
                onPressed: () {
                  GoRouter.of(
                    context,
                  ).pushReplacement(AppRoutes.passwordChanged);
                },
                type: ButtonType.elevated,
              ),
              SizedBox(height: 260.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Didn’t received code? ',
                    style: AppStyles.blackSemiBold16.copyWith(
                      color: Color(0xff617AFD),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      GoRouter.of(
                        context,
                      ).pushReplacement(AppRoutes.foregetPassword);
                    },
                    child: Text(
                      'Resend',
                      style: AppStyles.blackSemiBold16.copyWith(
                        color: Theme.of(context).colorScheme.inverseSurface,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
