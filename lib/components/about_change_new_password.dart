import 'package:flutter/material.dart';
import 'package:home_w/components/home_page.dart';

import 'about_password_changed.dart';

class AboutChangeNewPassword extends StatelessWidget {
  const AboutChangeNewPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          left: 20,
          top: 100,
          right: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Change',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'New Password',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 100),
              TextField(
                decoration: InputDecoration(
                  labelText: 'New Passowrd',
                  border: OutlineInputBorder(),
                  hintText: 'Enter New Password',
                  isDense: true,
                  suffixIcon: Icon(Icons.visibility_off_outlined,size: 25)
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'New Password',
                  border: OutlineInputBorder(),
                  hintText: 'Confirm New Password',
                  isDense: true,
                  suffixIcon: Icon(Icons.visibility_off_outlined,size: 25)
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
              SizedBox(height: 20),
              Container(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    final route = MaterialPageRoute(
                      builder: (context) => AboutPasswordChanged(),
                    );
                    Navigator.push(context, route);
                  },
                  child: Text(
                    'Change Passowrd',
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
            ],
          ),
        ),
      ),
    );
  }
}
