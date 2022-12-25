import 'package:flutter/material.dart';

class AboutRegister extends StatelessWidget {
  const AboutRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 80,
        left: 20,
        right: 20,
        bottom: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Register',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'New account',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          Spacer(),
          TextField(
            decoration: InputDecoration(
              labelText: 'Full Name',
              hintText: 'Enter full name',
              // border: OutlineInputBorder(),
              suffixIcon: Icon(Icons.badge_outlined),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'Enter your email',
              // border: OutlineInputBorder(),
              suffixIcon: Icon(Icons.mail_outline),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter phone number',
              labelText: 'Phone',
              // border: OutlineInputBorder(),
              suffixIcon: Icon(Icons.phone_android_sharp),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter phone number',
              labelText: 'Password',
              // border: OutlineInputBorder(),
              suffixIcon: Icon(Icons.lock_outline),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Forget Password?',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Register',
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
              SizedBox(width: 10),
              Text(
                "Register",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
