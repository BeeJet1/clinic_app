import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            context.router.pop(); //pop - go reverse;
            //replace router - do not allow to com back to prebious page
          },
          child: const Text(
            'Previous Page',
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
