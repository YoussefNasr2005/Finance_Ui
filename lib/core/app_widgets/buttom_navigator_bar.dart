import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustmizeBottomNavigatorBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;
  final Color? selectedItemColor;
  final TextStyle? selectedLabelStyle;
  final IconThemeData? selectedIconTheme, unselectedIconTheme;
  final List<BottomNavigationBarItem>? items;

  const CustmizeBottomNavigatorBar({
    super.key,
    this.selectedItemColor,
    this.selectedLabelStyle,
    this.selectedIconTheme,
    this.unselectedIconTheme,
    required this.onTap,
    required this.currentIndex,
    this.items,
  });
  @override
  State<CustmizeBottomNavigatorBar> createState() =>
      _CustmizeBottomNavigatorBar();
}

class _CustmizeBottomNavigatorBar extends State<CustmizeBottomNavigatorBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      selectedItemColor: widget.selectedItemColor ?? Colors.black,

      selectedLabelStyle:
          widget.selectedLabelStyle ??
          AppStyles.greyMedium12.copyWith(color: Colors.black),
      selectedIconTheme:
          widget.selectedIconTheme ??
          IconThemeData(size: 30, color: AppColors.primaryColor),
      unselectedIconTheme:
          widget.unselectedIconTheme ??
          IconThemeData(size: 30, color: AppColors.greyColor),
      currentIndex: widget.currentIndex,

      onTap: widget.onTap,

      items:
          widget.items ??
          [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.analytics_rounded),
              label: "Statistic",
            ),
            BottomNavigationBarItem(
              icon: Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                height: 48.sp,
                width: 48.sp,
                child: SvgPicture.asset(
                  'assets/icons/Add_item.svg',
                  height: 20.h,
                  width: 20.w,
                ),
              ),
              label: "",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.wallet),
              label: "My Card",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined),
              label: "Profile",
            ),
          ],
    );
  }
}
