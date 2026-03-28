import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_fonts.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppThemes {
  // ألوان الوضع الداكن
  static const _darkBackground = Color(0xFF0A0A0A); // أسود عميق
  static const _darkSurface = Color(0xFF141414); // سطح أغمق
  static const _darkCard = Color(0xFF1C1C1C); // بطاقات
  static const _darkElevated = Color(0xFF242424); // عناصر مرفوعة
  static const _darkBorder = Color(0xFF2A2A2A); // حدود خفيفة
  static const _darkTextPrimary = Color(0xFFF5F5F5); // نص رئيسي
  static const _darkTextSecondary = Color(0xFFAAAAAA); // نص ثانوي
  static const _darkTextHint = Color(0xFF666666); // تلميح

  static final lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      brightness: Brightness.light,
    ),
    scaffoldBackgroundColor: AppColors.backgroundColor,
    fontFamily: AppFonts.mainFontName,
    textTheme: TextTheme(
      bodyLarge: AppStyles.primaryHeadLineStyle,
      bodyMedium: AppStyles.subTitleStyle,
      bodySmall: AppStyles.greyMedium12,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: Colors.white,
        disabledBackgroundColor: AppColors.secondryColor,
        disabledForegroundColor: Colors.white54,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
      ),
    ),
  );

  static final darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,

    // ─── Color Scheme ───────────────────────────────────────────────
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: AppColors.primaryColor,
      onPrimary: Colors.white,
      primaryContainer: AppColors.primaryColor.withValues(alpha: 0.15),
      onPrimaryContainer: _darkTextPrimary,
      secondary: AppColors.primaryColor.withValues(alpha: 0.7),
      onSecondary: Colors.white,
      secondaryContainer: _darkElevated,
      onSecondaryContainer: _darkTextSecondary,
      surface: _darkSurface,
      onSurface: _darkTextPrimary,
      surfaceContainerHighest: _darkCard,
      error: const Color(0xFFCF6679),
      onError: Colors.white,
      outline: _darkBorder,
      shadow: Colors.black,
      scrim: Colors.black87,
      inverseSurface: _darkTextPrimary,
      onInverseSurface: _darkBackground,
      inversePrimary: AppColors.primaryColor,
    ),

    scaffoldBackgroundColor: _darkBackground,
    fontFamily: AppFonts.mainFontName,

    // ─── Typography ──────────────────────────────────────────────────
    textTheme: TextTheme(
      bodyLarge: AppStyles.primaryHeadLineStyle.copyWith(
        color: _darkTextPrimary,
      ),
      bodyMedium: AppStyles.subTitleStyle.copyWith(color: _darkTextSecondary),
      bodySmall: AppStyles.greyMedium12.copyWith(color: _darkTextHint),
      displayLarge: TextStyle(color: _darkTextPrimary),
      displayMedium: TextStyle(color: _darkTextPrimary),
      displaySmall: TextStyle(color: _darkTextPrimary),
      headlineLarge: TextStyle(color: _darkTextPrimary),
      headlineMedium: TextStyle(color: _darkTextPrimary),
      headlineSmall: TextStyle(color: _darkTextPrimary),
      titleLarge: TextStyle(color: _darkTextPrimary),
      titleMedium: TextStyle(color: _darkTextSecondary),
      titleSmall: TextStyle(color: _darkTextSecondary),
      labelLarge: TextStyle(color: _darkTextPrimary),
      labelMedium: TextStyle(color: _darkTextSecondary),
      labelSmall: TextStyle(color: _darkTextHint),
    ),

    // ─── AppBar ──────────────────────────────────────────────────────
    appBarTheme: const AppBarTheme(
      backgroundColor: _darkSurface,
      foregroundColor: _darkTextPrimary,
      surfaceTintColor: Colors.transparent,
      shadowColor: Colors.transparent,
      elevation: 0,
      centerTitle: false,
      iconTheme: IconThemeData(color: _darkTextPrimary),
      titleTextStyle: TextStyle(
        color: _darkTextPrimary,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: _darkBackground,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    ),

    // ─── Bottom Navigation ───────────────────────────────────────────
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: _darkSurface,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: _darkTextHint,
      type: BottomNavigationBarType.fixed,
      elevation: 0,
    ),

    // ─── NavigationBar (Material 3) ──────────────────────────────────
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: _darkSurface,
      indicatorColor: AppColors.primaryColor.withValues(alpha: 0.2),
      iconTheme: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return const IconThemeData(color: AppColors.primaryColor);
        }
        return const IconThemeData(color: _darkTextHint);
      }),
    ),

    // ─── Cards ───────────────────────────────────────────────────────
    cardTheme: CardThemeData(
      color: _darkCard,
      surfaceTintColor: Colors.transparent,
      shadowColor: Colors.black54,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: const BorderSide(color: _darkBorder, width: 0.5),
      ),
    ),

    // ─── Drawer ──────────────────────────────────────────────────────
    drawerTheme: const DrawerThemeData(
      backgroundColor: _darkSurface,
      surfaceTintColor: Colors.transparent,
    ),

    // ─── Dialog ──────────────────────────────────────────────────────
    dialogTheme: DialogThemeData(
      backgroundColor: _darkCard,
      surfaceTintColor: Colors.transparent,
      titleTextStyle: const TextStyle(
        color: _darkTextPrimary,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      contentTextStyle: const TextStyle(
        color: _darkTextSecondary,
        fontSize: 14,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),

    // ─── BottomSheet ─────────────────────────────────────────────────
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: _darkCard,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
    ),

    // ─── Input / TextField ───────────────────────────────────────────
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: _darkElevated,
      hintStyle: const TextStyle(color: _darkTextHint),
      labelStyle: const TextStyle(color: _darkTextSecondary),
      prefixIconColor: _darkTextSecondary,
      suffixIconColor: _darkTextSecondary,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: _darkBorder),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: _darkBorder),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: AppColors.primaryColor, width: 1.5),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFFCF6679)),
      ),
    ),

    // ─── Buttons ─────────────────────────────────────────────────────
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: Colors.white,
        disabledBackgroundColor: _darkElevated,
        disabledForegroundColor: _darkTextHint,
        elevation: 0,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
      ),
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.primaryColor,
        side: BorderSide(color: AppColors.primaryColor, width: 1.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
      ),
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: AppColors.primaryColor),
    ),

    // ─── Switch / Checkbox / Radio ───────────────────────────────────
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith((states) {
        return states.contains(WidgetState.selected)
            ? AppColors.primaryColor
            : _darkTextHint;
      }),
      trackColor: WidgetStateProperty.resolveWith((states) {
        return states.contains(WidgetState.selected)
            ? AppColors.primaryColor.withValues(alpha: 0.7)
            : _darkElevated;
      }),
    ),

    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith((states) {
        return states.contains(WidgetState.selected)
            ? AppColors.primaryColor
            : Colors.transparent;
      }),
      checkColor: WidgetStateProperty.all(Colors.white),
      side: const BorderSide(color: _darkBorder, width: 1.5),
    ),

    radioTheme: RadioThemeData(
      fillColor: WidgetStateProperty.resolveWith((states) {
        return states.contains(WidgetState.selected)
            ? AppColors.primaryColor
            : _darkTextHint;
      }),
    ),

    // ─── Misc ─────────────────────────────────────────────────────────
    iconTheme: const IconThemeData(color: _darkTextPrimary),
    dividerColor: _darkBorder,
    dividerTheme: const DividerThemeData(color: _darkBorder, thickness: 0.5),

    listTileTheme: const ListTileThemeData(
      tileColor: Colors.transparent,
      textColor: _darkTextPrimary,
      iconColor: _darkTextSecondary,
    ),

    chipTheme: ChipThemeData(
      backgroundColor: _darkElevated,
      labelStyle: const TextStyle(color: _darkTextSecondary),
      side: const BorderSide(color: _darkBorder),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),

    snackBarTheme: SnackBarThemeData(
      backgroundColor: _darkElevated,
      contentTextStyle: const TextStyle(color: _darkTextPrimary),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      behavior: SnackBarBehavior.floating,
    ),

    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: AppColors.primaryColor,
    ),

    tabBarTheme: TabBarThemeData(
      labelColor: AppColors.primaryColor,
      unselectedLabelColor: _darkTextHint,
      indicatorColor: AppColors.primaryColor,
      dividerColor: _darkBorder,
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryColor,
      foregroundColor: Colors.white,
      elevation: 4,
    ),

    popupMenuTheme: PopupMenuThemeData(
      color: _darkCard,
      surfaceTintColor: Colors.transparent,
      textStyle: const TextStyle(color: _darkTextPrimary),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: _darkBorder),
      ),
    ),
  );
}