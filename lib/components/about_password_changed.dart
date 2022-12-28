import 'package:flutter/material.dart';

import 'home_page.dart';

class AboutPasswordChanged extends StatelessWidget {
  const AboutPasswordChanged({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 100),
          Text(
            'Password',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Text(
            'changed!',
            style: TextStyle(
              fontSize: 30
            ),
          ),
          SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 300,
                width: 300,
                child: Image.asset(
                  'assets/imgs/password_changed.png'
                )
              ),
            ],
          ),
          Spacer(),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                    width: 240,
                    child: ElevatedButton(
                      onPressed: () {
                        final route = MaterialPageRoute(
                          builder: (context) => AboutHome(),
                        );
                        Navigator.push(context, route);
                      },
                      child: Text(
                        'Get started',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xfff2a500),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        )
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20)
        ],
      )
    );
  }
}
