import 'dart:async';

import 'package:flutter/material.dart';
import 'components/about_change_new_password.dart';
import 'components/about_forgot_password.dart';
import 'components/about_homescreen_food.dart';
import 'components/about_login_food.dart';
import 'components/about_password_changed.dart';
import 'components/about_register.dart';
import 'components/code_verification.dart';
import 'components/home_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: AboutHomePage(),
        //AboutRegister(),
        //AboutForgotPassword(),
        //AboutLogin(),
        //AboutHome(),
        //AboutPasswordChanged(),
        //AboutChangeNewPassword(),
        //CodeVerification(),
      ),
    );
  }
}

class AboutHomePage extends StatefulWidget {
  const AboutHomePage({Key? key}) : super(key: key);

  @override
  State<AboutHomePage> createState() => _AboutHomePageState();
}

class _AboutHomePageState extends State<AboutHomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => AboutLogin())
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2a500),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 64,
              width: 64,
              child: Image.asset(
                'assets/imgs/appicon.png'
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Foodes App',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}























