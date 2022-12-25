import 'package:flutter/material.dart';
import 'components/about_forgot_password.dart';
import 'components/about_homescreen_food.dart';
import 'components/about_login_food.dart';
import 'components/about_register.dart';

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
        body: //AboutHomePage(),
        //AboutRegister(),
        AboutForgotPassword(),
        //AboutLogin(),
      ),
    );
  }
}
