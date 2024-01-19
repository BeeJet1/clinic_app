import 'package:auto_route/auto_route.dart';
import 'package:clinic_app/modules/authorization/presentation/screens/info_page.dart';
import 'package:clinic_app/modules/authorization/presentation/screens/login_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: InfoRoute.page,
          initial:
              true, //this means that screen InfoPage is a main page of the App
        ),
        AutoRoute(
          page: LoginRoute.page,
        ),

        /// routes go here
      ];
}
