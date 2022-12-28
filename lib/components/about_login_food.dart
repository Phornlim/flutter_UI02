import 'package:flutter/material.dart';
import 'package:home_w/components/about_forgot_password.dart';

import 'about_register.dart';
import 'home_page.dart';

class AboutLogin extends StatelessWidget {
  const AboutLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            top: 80,
            left: 20,
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Login to',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'find the best food',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 70),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  // border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.mail_outline),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  // border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.lock_outline),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    child: Text(
                      'Forgot Passoword?',
                      style: TextStyle(
                        color: Colors.black
                      ),
                    ),
                    onPressed: () {
                      final route = MaterialPageRoute(
                        builder: (context) => AboutForgotPassword(),
                      );
                      Navigator.push(context, route);
                    },
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    final route = MaterialPageRoute(
                      builder: (context) => AboutHome(),
                    );
                    Navigator.push(context, route);
                  },
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xfff2a500),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 50,
                child: OutlinedButton.icon(
                  icon: Icon(Icons.facebook),
                  label: Text(
                    'Sign up with Facebook',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    textStyle: TextStyle(
                      fontSize: 15
                    ),
                    primary: Colors.black,
                    side: BorderSide(
                      width: 0.9,
                      color: Colors.black,
                    )
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                  ),
                  // SizedBox(width: 10),
                  TextButton(
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      final route = MaterialPageRoute(
                        builder: (context) => AboutRegister(),
                      );
                      Navigator.push(context, route);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
