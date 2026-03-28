import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final String? hintText;
  final double? width, height, contentPadding, borderRadius, borderSideWidth;
  final Color? hintColor,
      borderSideColor,
      fillColor,
      textfieldColor,
      suffixIconColor;
  final bool isPassword;
  final String? Function(String?)? validator;
  const CustomTextFormField({
    super.key,
    this.controller,
    this.suffixIcon,
    this.hintText,
    this.width,
    this.hintColor,
    this.contentPadding,
    this.borderRadius,
    this.borderSideColor,
    this.borderSideWidth,
    this.fillColor,
    this.height,
    this.textfieldColor,
    required this.isPassword,
    this.suffixIconColor,
    this.validator,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return SizedBox(
      width: widget.width ?? 331.w,
      child: TextFormField(
        validator: widget.validator,
        obscureText: widget.isPassword && isObscure,
        autofocus: false,
        controller: widget.controller,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: widget.textfieldColor ?? colorScheme.onSurface,
        ),
        decoration: InputDecoration(
          hintText: widget.hintText ?? "",
          suffixIcon: widget.isPassword
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  icon: isObscure
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility),
                )
              : widget.suffixIcon,
          contentPadding: EdgeInsets.symmetric(
            horizontal: widget.contentPadding ?? 18.w,
            vertical: widget.contentPadding ?? 18.h,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 8.r),
            borderSide: BorderSide(
              color:
                  widget.borderSideColor ??
                  colorScheme.outline.withValues(alpha: 0.3),
              width: widget.borderSideWidth ?? 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 8.r),
            borderSide: BorderSide(
              color: widget.borderSideColor ?? colorScheme.primary,
              width: widget.borderSideWidth ?? 3,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 8.r),
            borderSide: BorderSide(
              color: colorScheme.error,
              width: widget.borderSideWidth ?? 3,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 8.r),
            borderSide: BorderSide(
              color: colorScheme.error,
              width: widget.borderSideWidth ?? 3,
            ),
          ),
          filled: true,
          fillColor: widget.fillColor ?? colorScheme.surfaceContainerHighest,
        ),
      ),
    );
  }
}
