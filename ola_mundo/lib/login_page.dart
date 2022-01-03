// ignore_for_file: deprecated_member_use, avoid_print

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                SizedBox(
                  width: 150,
                  height: 150,
                  child: Image.asset('assets/images/base.png'),
                ),
                const SizedBox(height: 40),
                TextField(
                  onChanged: (text) {
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      labelText: 'E-mail', border: OutlineInputBorder()),
                ),
                const SizedBox(height: 10),
                TextField(
                  onChanged: (text) {
                    password = text;
                  },
                  obscureText: true,
                  decoration: const InputDecoration(
                      labelText: 'Password', border: OutlineInputBorder()),
                ),
                const SizedBox(height: 15),
                RaisedButton(
                  onPressed: () {
                    if (email == 'jarbas@gmail.com' && password == '123') {
                      Navigator.of(context).pushReplacementNamed('/home');
                    } else {
                      print('Login Inválido');
                    }
                  },
                  child: const Text('Entrar'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
