import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:clinic_app/core/core/config/app_consts.dart';
import 'package:clinic_app/core/core/config/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:shared_preferences/shared_preferences.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  get controller => null;

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    int code = 0;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon:
              const ImageIcon(AssetImage('assets/images/close.png'), size: 24),
          onPressed: () {
            context.router.push(
              //push goes forward
              const InfoRoute(),
            );
          },
        ),
        title: const Text(
          'Вход',
          style: TextStyle(
            fontSize: 17,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w600,
          ),
        ),
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
              padding: EdgeInsets.only(left: 10, right: 200, top: 20),
              child: Text(
                'Войти',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 34,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(height: 40),
            const Padding(
              padding: EdgeInsets.only(left: 10, right: 190, top: 20),
              child: Text(
                'Номер телефона',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: 310,
              child: TextField(
                inputFormatters: [MaskTextInputFormatter(mask: '### ## ## ##')],
                //maxLength: 9,
                focusNode: FocusNode(),
                controller: controller,
                // onChanged: (value) {
                //   print(value); //function for data validation
                // },
                keyboardType: TextInputType.number,
                //style: FontWeight(12), to set text style of entering text by user
                decoration: const InputDecoration(
                  prefix: Text('0'),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: '--- -- -- --',
                  helperText:
                      'На указанный вами номер придет однократное СМС-сообщение с кодом подтверждения',
                  helperMaxLines: 3,

                  //focusedBorder: OutlineInputBorder(
                  // borderRadius: BorderRadius.all(
                  //   Radius.circular(
                  //     25,
                  //   ),
                  // ),
                  //),
                  // errorBorder: OutlineInputBorder(
                  //   borderSide: BorderSide(color: Colors.black),
                  disabledBorder: UnderlineInputBorder(),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 150),
            TextButton(
              // onPressed: () {
              //   code = Random().nextInt(8999) + 1000;
              //   ScaffoldMessenger.of(context).showSnackBar(
              //     SnackBar(
              //       content: Text(code.toString()),
              //     ),
              //   );
              //   context.router.push(
              //     const LoginRoute(),
              //   );
              // final SharedPreferences prefs =
              //       await SharedPreferences.getInstance();
              // },
              onPressed: () async {
                const storage = FlutterSecureStorage();
                await storage.write(
                    key: AppConsts.phone, value: controller.text);
                print('${await storage.read(key: AppConsts.phone)}');
                code = Random().nextInt(8999) + 1000;
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(code.toString()),
                  ),
                );
                // context.router.push(
                //   const SmsRoute(),
                // );
                // final SharedPreferences prefs =
                //     await SharedPreferences.getInstance();
                // await prefs.setBool(
                //   AppConsts.isFirstEnter,
                //   false,
                // );
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
                'Далее',
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
