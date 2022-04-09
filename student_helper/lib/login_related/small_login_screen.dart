import 'package:flutter/material.dart';

import 'form_login.dart';
// import 'package:student_helper/login_related/form_login.dart';

class SmallLoginScreen extends StatelessWidget {
  const SmallLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Sign In to \nStudent Helper',
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "If you don't have an account",
            style: TextStyle(
              color: Colors.black45,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'You can',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Register',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Image.asset(
            'images/reading.png',
            height: 125,
            width: 175,
          ),
          Container(
            width: deviceSize.width,
            margin: const EdgeInsets.all(25),
            child: const FormLogin(
              isSmallScreen: true,
            ),
          ),
        ],
      ),
    );
  }
}
