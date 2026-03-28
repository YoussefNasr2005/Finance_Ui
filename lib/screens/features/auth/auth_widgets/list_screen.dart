import 'package:finance_ui/screens/cards_page.dart';
import 'package:finance_ui/screens/home.dart';
import 'package:finance_ui/screens/profile_page.dart';
import 'package:finance_ui/screens/statistic.dart';
import 'package:flutter/material.dart';

class ListScreen {
  static final List<Widget> screens = [
    const Home(),
    const StatisticPage(),
    Container(color: Colors.blueGrey),
    const CardsPage(),
    const ProfilePage(),
  ];
}
