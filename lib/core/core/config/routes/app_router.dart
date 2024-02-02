import 'package:auto_route/auto_route.dart';
import 'package:clinic_app/modules/authorization/presentation/screens/info_page.dart';
import 'package:clinic_app/modules/authorization/presentation/screens/login_page.dart';
import 'package:clinic_app/modules/authorization/presentation/screens/profile_creation.dart';
import 'package:clinic_app/modules/home_page/feature/profile_page/presentation/screens/profile_screen.dart';
import 'package:clinic_app/modules/splash_screen.dart';
import 'package:clinic_app/modules/authorization/presentation/screens/sms_page.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: InfoRoute.page,
        ),
        AutoRoute(
          page: LoginRoute.page,
        ),
        AutoRoute(
          page: SplashRoute.page,
        ),
        AutoRoute(
          page: SmsRoute.page,
        ),
        AutoRoute(
          page: ProfCreatRoute.page,
        ),
        AutoRoute(page: ProfileRoute.page, initial: true),
      ];
}
