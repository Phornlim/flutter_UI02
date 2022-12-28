import 'package:flutter/material.dart';

class AboutHome extends StatelessWidget {
  const AboutHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Home Page',
                style: TextStyle(
                  fontSize: 30
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            'Username: Lim',
            style: TextStyle(
              fontSize: 30
            ),
          ),
          Text(
            'Password: 123456',
            style: TextStyle(
              fontSize: 30
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_2_sharp),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_outlined),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_outlined),
            label: ''
          )
        ],
      ),
    );
  }
}
