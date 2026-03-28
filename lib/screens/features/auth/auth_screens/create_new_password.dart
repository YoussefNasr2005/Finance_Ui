import 'package:finance_ui/core/app_widgets/app_buttons.dart';
import 'package:finance_ui/core/app_widgets/custom_icon_button.dart';
import 'package:finance_ui/core/app_widgets/custom_textfield.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({super.key});

  @override
  State<CreateNewPassword> createState() => _ForegetPassword();
}

class _ForegetPassword extends State<CreateNewPassword> {
  final formKey = GlobalKey<FormState>();

  late TextEditingController emailController;
  late TextEditingController confirmController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    confirmController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 15.h),
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
                  'Create new password',
                  style: AppStyles.primaryHeadLineStyle.copyWith(fontSize: 29),
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                'Your new password must be unique from those previously used.',
                style: AppStyles.blackSemiBold16.copyWith(
                  color: Color(0xff8391A1),
                ),
              ),
              SizedBox(height: 32.h),
              CustomTextFormField(
                validator: (emailVal) {
                  if (emailVal!.isEmpty) {
                    return "Enter New Password";
                  } else if (emailVal.length < 8) {
                    return "must be least 8 charcters";
                  }
                  return null;
                },
                controller: emailController,
                isPassword: false,
                hintText: "New Password",
              ),
              SizedBox(height: 15.h),
              CustomTextFormField(
                validator: (confirmVal) {
                  if (confirmVal!.isEmpty) {
                    return "Confirm Password";
                  } else if (confirmVal.length < 8) {
                    return "must be least 8 charcters";
                  }
                  return null;
                },
                controller: confirmController,
                isPassword: false,
                hintText: "Confirm Password",
              ),
              SizedBox(height: 38.h),
              AppButtons(
                buttonText: 'Reset Password',
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    GoRouter.of(context).pushNamed(AppRoutes.passwordChanged);
                  }
                },
                type: ButtonType.elevated,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
