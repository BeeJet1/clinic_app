// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    InfoRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const InfoPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    ProfCreatRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfCreatPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileScreen(),
      );
    },
    SmsRoute.name: (routeData) {
      final args = routeData.argsAs<SmsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SmsPage(
          key: args.key,
          code: args.code,
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [InfoPage]
class InfoRoute extends PageRouteInfo<void> {
  const InfoRoute({List<PageRouteInfo>? children})
      : super(
          InfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'InfoRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfCreatPage]
class ProfCreatRoute extends PageRouteInfo<void> {
  const ProfCreatRoute({List<PageRouteInfo>? children})
      : super(
          ProfCreatRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfCreatRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SmsPage]
class SmsRoute extends PageRouteInfo<SmsRouteArgs> {
  SmsRoute({
    Key? key,
    required int code,
    List<PageRouteInfo>? children,
  }) : super(
          SmsRoute.name,
          args: SmsRouteArgs(
            key: key,
            code: code,
          ),
          initialChildren: children,
        );

  static const String name = 'SmsRoute';

  static const PageInfo<SmsRouteArgs> page = PageInfo<SmsRouteArgs>(name);
}

class SmsRouteArgs {
  const SmsRouteArgs({
    this.key,
    required this.code,
  });

  final Key? key;

  final int code;

  @override
  String toString() {
    return 'SmsRouteArgs{key: $key, code: $code}';
  }
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
