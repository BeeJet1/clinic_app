import 'package:auto_route/auto_route.dart';
import 'package:clinic_app/core/core/config/routes/app_router.dart';
import 'package:clinic_app/modules/authorization/presentation/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
// import 'package:clinic_app/core/core/config/app_consts.dart';
// import 'package:clinic_app/core/core/config/routes/app_router.dart';
// import 'package:shared_preferences/shared_preferences.dart';

@RoutePage()
class SmsPage extends StatefulWidget {
  const SmsPage({
    super.key,
    required this.code,
  });

  final int code;

  @override
  State<SmsPage> createState() => _SmsPageState();
}

class _SmsPageState extends State<SmsPage> {
  final TextEditingController controller = TextEditingController();

  String? errorText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const ImageIcon(AssetImage('assets/images/left.png'), size: 24),
          onPressed: () {
            context.router.push(
              const LoginPage() as PageRouteInfo,
            );
          },
        ),
        title: const Text(
          'Подтверждение номера',
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
                'Введите код из смс',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(height: 80),
            // const Padding(
            //   padding: EdgeInsets.only(left: 10, right: 190, top: 20),
            //   child: Text(
            //     'Номер телефона',
            //     textAlign: TextAlign.left,
            //     style: TextStyle(
            //       fontSize: 15,
            //       fontWeight: FontWeight.w400,
            //     ),
            //   ),
            // ),
            const SizedBox(height: 12),
            SizedBox(
              width: 310,
              child: TextField(
                inputFormatters: [MaskTextInputFormatter(mask: 'Код ####')],
                focusNode: FocusNode(),
                controller: controller,
                // onChanged: (value) {
                //   print(value); //function for data validation
                // },
                keyboardType: TextInputType.number,
                //style: FontWeight(12), to set text style of entering text by user
                decoration: InputDecoration(
                  errorText: errorText,
                  prefix: const Text('*'),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: '--- -- -- --',
                  helperText: 'Получить код повторно',
                  helperMaxLines: 1,
                  //focusedBorder: OutlineInputBorder(
                  // borderRadius: BorderRadius.all(
                  //   Radius.circular(
                  //     25,
                  //   ),
                  // ),
                  //),
                  // errorBorder: OutlineInputBorder(
                  //   borderSide: BorderSide(color: Colors.black),
                  disabledBorder: const UnderlineInputBorder(),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 150),
            TextButton(
              onPressed: () {
                if (controller.text == 'Код ${widget.code}') {
                  context.router.push(
                    const ProfCreatRoute(),
                  );
                } else {
                  errorText = 'error';
                  setState(() {});
                }
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
