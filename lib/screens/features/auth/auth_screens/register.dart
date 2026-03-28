import 'package:finance_ui/core/app_widgets/app_buttons.dart';
import 'package:finance_ui/core/app_widgets/custom_textfield.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/routing/app_routes.dart';
import 'package:finance_ui/core/app_widgets/custom_icon_button.dart';
import 'package:finance_ui/screens/features/auth/auth_widgets/or_login_with.dart';
import 'package:finance_ui/screens/features/auth/auth_widgets/social_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Register extends StatefulWidget {
  const Register({super.key});
  @override
  State<Register> createState() => _Register();
}

class _Register extends State<Register> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPassController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPassController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 22.w, right: 22.w, top: 12.h),
        child: Form(
          key: formKey,
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
                    'Hello! Register to get started',
                    style: AppStyles.primaryHeadLineStyle,
                  ),
                ),
                SizedBox(height: 32.h),
                const CustomTextFormField(
                  isPassword: false,
                  hintText: "Username",
                ),
                SizedBox(height: 12.h),
                CustomTextFormField(
                  validator: (emailVal) {
                    if (emailVal!.isEmpty) {
                      return "Enter your email";
                    }
                    return null;
                  },
                  controller: emailController,
                  isPassword: false,
                  hintText: "Email",
                ),
                SizedBox(height: 12.h),
                CustomTextFormField(
                  controller: passwordController,
                  validator: (passrVal) {
                    if (passrVal!.isEmpty) {
                      return "Enter your password";
                    } else if (passrVal.length < 8) {
                      return "Password must be at least 8 characters";
                    }
                    return null;
                  },
                  isPassword: false,
                  hintText: "Password",
                ),
                SizedBox(height: 12.h),
                CustomTextFormField(
                  controller: confirmPassController,
                  validator: (passrVal) {
                    if (passrVal!.isEmpty) {
                      return "Confirm password";
                    } else if (passrVal.length < 8) {
                      return "Password must be at least 8 characters";
                    }
                    return null;
                  },
                  isPassword: false,
                  hintText: "Confirm Password",
                ),

                SizedBox(height: 30.h),
                AppButtons(
                  type: ButtonType.elevated,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      GoRouter.of(context).pushNamed(AppRoutes.login);
                    }
                  },
                  buttonText: "Register",
                ),
                SizedBox(height: 35.h),
                const OrLoginWithWidet(),
                SizedBox(height: 10.h),
                SocialLinksWidget(
                  onTapSocialOne: () {},
                  onTapSocialTwo: () {},
                  onTapSocialThree: () {},
                ),
                SizedBox(height: 50.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account? ',
                      style: AppStyles.blackSemiBold16.copyWith(
                        color: AppColors.primaryColor,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        GoRouter.of(
                          context,
                        ).pushReplacementNamed(AppRoutes.login);
                      },
                      child: Text(
                        'Login Now',
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
