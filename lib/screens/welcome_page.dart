import 'package:finance_ui/core/app_widgets/app_buttons.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/main.dart';
import 'package:finance_ui/routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Welcomepage extends StatefulWidget {
  const Welcomepage({super.key});

  @override
  State<Welcomepage> createState() => _WelcomepageState();
}

class _WelcomepageState extends State<Welcomepage> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/photo1.png',
                width: double.infinity,
                height: 570,
                fit: BoxFit.fitWidth,
              ),
              Positioned(
                top: 20,
                right: 15,
                child: IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: Theme.of(context).secondaryHeaderColor,
                  ),
                  onPressed: () {
                    MyApp.of(context).toggleTheme();
                  },
                  icon: Icon(
                    MyApp.of(context).isDark
                        ? Icons.light_mode
                        : Icons.dark_mode,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 21.sp),
          AppButtons(
            buttonText: "Login",
            type: ButtonType.elevated,
            onPressed: () {
              GoRouter.of(context).pushNamed(AppRoutes.login);
            },
          ),
          SizedBox(height: 15.h),
          AppButtons(
            buttonText: "Register",
            type: ButtonType.outlined,
            onPressed: () {
              GoRouter.of(context).pushNamed(AppRoutes.register);
            },
          ),
          const Spacer(),
          TextButton(
            onPressed: () {
              GoRouter.of(context).pushNamed(AppRoutes.mainSreen);
            },
            child: Text(
              'Continue as a guest',
              style: AppStyles.blackSemiBold16.copyWith(
                decoration: TextDecoration.underline,
                color: colorScheme.onSurface,
              ),
            ),
          ),
          SizedBox(height: 30.h),
        ],
      ),
    );
  }
}
