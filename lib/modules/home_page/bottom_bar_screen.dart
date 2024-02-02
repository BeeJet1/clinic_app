import 'package:auto_route/auto_route.dart';
import 'package:clinic_app/core/core/config/routes/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BottomNavBarScreen extends StatelessWidget {
  const BottomNavBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        DoctorsRoute(),
        ProfileRoute(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.blue,
            onPressed: () {},
          ),
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              // here we switch between tabs
              tabsRouter.setActiveIndex(index);
            },
            items: const [
              BottomNavigationBarItem(
                label: 'qweq',
                icon: Icon(
                  Icons.abc,
                ),
              ),
              BottomNavigationBarItem(
                label: 'qweq',
                icon: Icon(
                  Icons.abc,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
