import 'package:finance_ui/core/app_widgets/app_buttons.dart';
import 'package:finance_ui/core/app_widgets/custom_textfield.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/routing/app_routes.dart';
import 'package:finance_ui/core/app_widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ForegetPassword extends StatefulWidget {
  const ForegetPassword({super.key});

  @override
  State<ForegetPassword> createState() => _ForegetPassword();
}

class _ForegetPassword extends State<ForegetPassword> {
  final formKey = GlobalKey<FormState>();

  late TextEditingController emailController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 12.h),
          child: Form(
            key: formKey,
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
                    'Forgot Password?',
                    style: AppStyles.primaryHeadLineStyle,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  'Don\'t worry! It occurs. Please enter the email address linked with your account.',
                  style: AppStyles.blackSemiBold16.copyWith(
                    color: Color(0xff8391A1),
                  ),
                ),
                SizedBox(height: 32.h),
                CustomTextFormField(
                  validator: (emailVal) {
                    if (emailVal!.isEmpty) {
                      return "Enter your email";
                    }
                    return null;
                  },
                  controller: emailController,
                  isPassword: false,
                  hintText: "Enter your email",
                ),
                SizedBox(height: 38.h),
                AppButtons(
                  buttonText: 'Send Code',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      GoRouter.of(context).pushNamed(AppRoutes.otpVerifcation);
                    }
                  },
                  type: ButtonType.elevated,
                ),
                SizedBox(height: 255.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Remember Password? ',
                      style: AppStyles.blackSemiBold16.copyWith(
                        color: Color(0xff617AFD),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        GoRouter.of(context).pushReplacement(AppRoutes.login);
                      },
                      child: Text(
                        'Login',
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
      ),
    );
  }
}
