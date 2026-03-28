import 'package:finance_ui/core/app_widgets/buttom_navigator_bar.dart';
import 'package:finance_ui/screens/features/auth/auth_widgets/list_screen.dart';
import 'package:flutter/material.dart';

class MainSreen extends StatefulWidget {
  const MainSreen({super.key});

  @override
  State<MainSreen> createState() => _MainSreen();
}

class _MainSreen extends State<MainSreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListScreen.screens[currentIndex],
      bottomNavigationBar: CustmizeBottomNavigatorBar(
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        currentIndex: currentIndex,
      ),
    );
  }
}
