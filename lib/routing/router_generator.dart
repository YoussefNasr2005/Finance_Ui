import 'package:finance_ui/screens/cards_page.dart';
import 'package:finance_ui/screens/features/auth/auth_screens/create_new_password.dart';
import 'package:finance_ui/screens/features/auth/auth_screens/forget_password.dart';
import 'package:finance_ui/screens/features/auth/auth_screens/login.dart';
import 'package:finance_ui/screens/features/auth/auth_screens/otp_verifcation.dart';
import 'package:finance_ui/screens/features/auth/auth_screens/password_changed.dart';
import 'package:finance_ui/screens/features/auth/auth_screens/register.dart';
import 'package:finance_ui/screens/home.dart';
import 'package:finance_ui/screens/main_screen.dart';
import 'package:finance_ui/screens/profile_page.dart';
import 'package:finance_ui/screens/statistic.dart';
import 'package:flutter/material.dart';
import 'package:finance_ui/routing/app_routes.dart';
import 'package:finance_ui/screens/welcome_page.dart';

/*                            One_Way    */
// class RouterGenerator {
//   static Route generateRoute(RouteSettings settings) {
//     final arg = settings.arguments;

//     switch (settings.name) {
//       case AppRoutes.firstScreen:
//         return MaterialPageRoute(builder: (context) => FirstScreen());

//       case AppRoutes.secondScreen:
//         return MaterialPageRoute(
//           // settings: RouteSettings(arguments: arg),# Other_Way #
//           builder: (context) =>
//               SecondScreen(ProductDetailes: arg as ProductDetailes),
//         );

//       case AppRoutes.thirdScreen:
//         return MaterialPageRoute(builder: (context) => ThirdScreen());

//       case AppRoutes.homepage:
//         return MaterialPageRoute(builder: (context) => Homepage());

//       default:
//         return MaterialPageRoute(
//           builder: (context) => Scaffold(
//             body: Center(
//               child: Text('No route found!', style: TextStyle(fontSize: 30)),
//             ),
//           ),
//         );
//     }
//   }
// }

/*                               Other_Way    */
import 'package:go_router/go_router.dart';

class RouterGenerator {
  static GoRouter mainRouterInOurApp = GoRouter(
    initialLocation: AppRoutes.welcomePage,
    errorBuilder: (context, state) => const Scaffold(
      body: Center(
        child: Text('This route is not found!', style: TextStyle(fontSize: 25)),
      ),
    ),
    routes: [
      GoRoute(
        name: AppRoutes.welcomePage,
        path: AppRoutes.welcomePage,
        builder: (context, state) => const Welcomepage(),
      ),
      GoRoute(
        name: AppRoutes.login,
        path: AppRoutes.login,
        builder: (context, state) => const Login(),
      ),
      GoRoute(
        name: AppRoutes.register,
        path: AppRoutes.register,
        builder: (context, state) => const Register(),
      ),
      GoRoute(
        name: AppRoutes.otpVerifcation,
        path: AppRoutes.otpVerifcation,
        builder: (context, state) => const OtpVerifcation(),
      ),
      GoRoute(
        name: AppRoutes.foregetPassword,
        path: AppRoutes.foregetPassword,
        builder: (context, state) => const ForegetPassword(),
      ),
      GoRoute(
        name: AppRoutes.createNewPassword,
        path: AppRoutes.createNewPassword,
        builder: (context, state) => const CreateNewPassword(),
      ),
      GoRoute(
        name: AppRoutes.passwordChanged,
        path: AppRoutes.passwordChanged,
        builder: (context, state) => const PasswordChanged(),
      ),
      GoRoute(
        name: AppRoutes.home,
        path: AppRoutes.home,
        builder: (context, state) => const Home(),
      ),
      GoRoute(
        name: AppRoutes.statisticPage,
        path: AppRoutes.statisticPage,
        builder: (context, state) => const StatisticPage(),
      ),
      GoRoute(
        name: AppRoutes.cardsPage,
        path: AppRoutes.cardsPage,
        builder: (context, state) => const CardsPage(),
      ),
      GoRoute(
        name: AppRoutes.profilePage,
        path: AppRoutes.profilePage,
        builder: (context, state) => const ProfilePage(),
      ),
      GoRoute(
        name: AppRoutes.mainSreen,
        path: AppRoutes.mainSreen,
        builder: (context, state) => const MainSreen(),
      ),
    ],
  );
}
