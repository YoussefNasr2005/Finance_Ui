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

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  final formKey = GlobalKey<FormState>();

  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

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
                    'Welcome back! Again!',
                    style: AppStyles.primaryHeadLineStyle.copyWith(
                      color: colorScheme.onSurface,
                    ),
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
                SizedBox(height: 15.h),
                CustomTextFormField(
                  validator: (passrVal) {
                    if (passrVal!.isEmpty) {
                      return "Enter your password";
                    } else if (passrVal.length < 8) {
                      return "Password must be at least 8 characters";
                    }
                    return null;
                  },
                  controller: passwordController,
                  isPassword: true,
                  hintText: "Enter your password",
                ),
                SizedBox(height: 15.h),
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {
                      GoRouter.of(context).pushNamed(AppRoutes.foregetPassword);
                    },
                    child: Text(
                      'Forget Password?',
                      style: AppStyles.greyMedium12.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
                AppButtons(
                  type: ButtonType.elevated,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      GoRouter.of(context).pushNamed(AppRoutes.mainSreen);
                    }
                  },
                  buttonText: "Login",
                ),
                SizedBox(height: 35.h),
                const OrLoginWithWidet(),
                SizedBox(height: 10.h),
                SocialLinksWidget(
                  onTapSocialOne: () {},
                  onTapSocialTwo: () {},
                  onTapSocialThree: () {},
                ),
                SizedBox(height: 55.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: AppStyles.blackSemiBold16.copyWith(
                        color: colorScheme.primary,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        GoRouter.of(context).pushNamed(AppRoutes.register);
                      },
                      child: Text(
                        'Register Now',
                        style: AppStyles.blackSemiBold16.copyWith(
                          color: colorScheme.onSurface,
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
