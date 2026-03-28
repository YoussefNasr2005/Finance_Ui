import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum BorderType { circle, rounded }

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  final BorderType type;
  final Color? color;

  const CustomIconButton({
    super.key,
    required this.icon,
    this.onPressed,
    required this.type,
    this.color,
  });

  bool get isCircle => type == BorderType.circle;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      height: isCircle ? 48.w : 41.w,
      width: isCircle ? 48.w : 41.w,
      decoration: BoxDecoration(
        // ✅ بدل Color(0xffFDFDFD)
        color: colorScheme.surface,
        shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
        borderRadius: isCircle ? null : BorderRadius.circular(12.r),
        border: Border.all(
          // ✅ بدل Color(0xffE3E9ED) و Color(0xffE8ECF4)
          color: colorScheme.outline.withValues(alpha: 0.3),
        ),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 22.sp,
          // ✅ بدل Color(0xff1F2C37)
          color: color ?? colorScheme.onSurface,
        ),
      ),
    );
  }
}
