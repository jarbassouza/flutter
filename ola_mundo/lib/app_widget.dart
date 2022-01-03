import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';
import 'home_page.dart';
import 'login_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.red,
            brightness: AppController.instance.isDartTheme
                ? Brightness.dark
                : Brightness.light,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => const LoginPage(),
            '/home': (context) =>  const HomePage(),
          }
        );
      },
    );
  }
}
