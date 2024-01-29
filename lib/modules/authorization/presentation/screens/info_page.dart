import 'package:clinic_app/core/core/config/app_consts.dart';
import 'package:clinic_app/core/core/config/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:shared_preferences/shared_preferences.dart';

@RoutePage()
class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Профиль',
          style: TextStyle(
            fontSize: 17,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.settings,
              size: 24,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Divider(
            color: Colors.grey,
            height: 1.0,
          ),
        ),
      ),
      body: Center(
        child: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            const Padding(
              padding: EdgeInsets.only(left: 10, right: 120, top: 20),
              child: Text(
                'Зачем нужен профиль?',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                width: 380,
                height: 70,
                color: Colors.white,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/hospital.png',
                      alignment: Alignment.bottomLeft,
                      width: 32,
                      height: 32,
                    ),
                    const SizedBox(width: 20),
                    const Expanded(
                      child: Text(
                        'Записывайтесь на прием к самым лучшим специалистам',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'SF Pro Display'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                width: 380,
                height: 70,
                color: Colors.white,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/clipboard.png',
                      alignment: Alignment.bottomLeft,
                      width: 32,
                      height: 32,
                    ),
                    const SizedBox(width: 20),
                    const Expanded(
                      child: Text(
                        'Сохраняйте результаты ваших анализов, диагнозы и рекомендации от врачей в собственную библиотеку',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'SF Pro Display'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                width: 380,
                height: 70,
                color: Colors.white,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/speechballoon.png',
                      alignment: Alignment.bottomLeft,
                      width: 32,
                      height: 32,
                    ),
                    const SizedBox(width: 20),
                    const Expanded(
                      child: Text(
                        'Просматривайте отзывы о врачах и дополняйте собственными комментариями',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'SF Pro Display'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                width: 380,
                height: 70,
                color: Colors.white,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/bellhop.png',
                      alignment: Alignment.bottomLeft,
                      width: 32,
                      height: 32,
                    ),
                    const SizedBox(width: 20),
                    const Expanded(
                      child: Text(
                        'Получайте уведомления о приеме или о поступивших сообщениях',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'SF Pro Display'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 25),
            TextButton(
              onPressed: () async {
                context.router.push(
                  const LoginRoute(),
                );
                final SharedPreferences prefs =
                    await SharedPreferences.getInstance();
                await prefs.setBool(
                  AppConsts.isFirstEnter,
                  false,
                );
              },
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  side: const BorderSide(
                    color: Color(0xFF4A86CC),
                  ),
                ),
                backgroundColor: Colors.blue,
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 130),
              ),
              child: const Text(
                'Войти',
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
