import 'package:flutter/material.dart';
import 'package:home_w/components/about_login_food.dart';
import 'package:home_w/components/code_verification.dart';

import 'about_change_new_password.dart';

class AboutForgotPassword extends StatelessWidget {
  const AboutForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 80,
          left: 20,
          right: 20,
          bottom: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Forgot',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'Password?',
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
            Text(
              "Please provide your email to reset your password, please don't share any data to other people.",
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 13,
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [
            //     TextButton(
            //       child: Text(
            //         'Forgot Passoword?',
            //         style: TextStyle(
            //             color: Colors.black
            //         ),
            //       ),
            //       onPressed: () {
            //         final route = MaterialPageRoute(
            //           builder: (context) => AboutForgotPassword(),
            //         );
            //         Navigator.push(context, route);
            //       },
            //     ),
            //   ],
            // ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  final route = MaterialPageRoute(
                    builder: (context) => CodeVerification(),
                  );
                  Navigator.push(context, route);
                },
                child: Text(
                  'Reset Password',
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
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Remember now?",
                ),
                SizedBox(width: 5),
                TextButton(
                  child: Text(
                    'Login Here',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                  ),
                  onPressed: () {
                    final route = MaterialPageRoute(
                      builder: (context) => AboutLogin(),
                    );
                    Navigator.push(context, route);
                  },
                ),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Need help?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
