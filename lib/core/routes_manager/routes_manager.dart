import 'package:evently_c14_online_sat/presentation/authentication/signIn/signIn.dart';
import 'package:evently_c14_online_sat/presentation/authentication/signUp/signUp.dart';
import 'package:evently_c14_online_sat/presentation/create_event/create_event.dart';
import 'package:evently_c14_online_sat/presentation/mian_layout/main_layout.dart';
import 'package:flutter/cupertino.dart';

class RoutesManager {
  static const String signUp = "/signUp";
  static const String signIn = "/signIn";
  static const String mainLayout = "/mainLayout";
  static const String createEvent = "/createEvent";

  static Route? router(RouteSettings settings) {
    switch (settings.name) {
      case signUp:
        return CupertinoPageRoute(
          builder: (context) => const SignUp(),
        );
      case signIn:
        return CupertinoPageRoute(
          builder: (context) => const SignIn(),
        );
      case mainLayout:
        return CupertinoPageRoute(
          builder: (context) => const MainLayout(),
        );
      case createEvent:
        return CupertinoPageRoute(
          builder: (context) => const CreateEventScreen(),
        );
    }
  }
}

