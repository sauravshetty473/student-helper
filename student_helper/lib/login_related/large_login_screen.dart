import 'package:flutter/material.dart';
import 'package:student_helper/login_related/form_login.dart';

class LargeLoginScreen extends StatelessWidget {
  const LargeLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: deviceSize.width * 0.25,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'You can',
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Image.asset(
                'images/reading.png',
                height: 100,
                width: 200,
              ),
            ],
          ),
        ),
        Container(
          width: deviceSize.width * 0.2,
          child: Image.asset(
            'images/united.png',
            height: 300,
            width: 300,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: deviceSize.height / 6),
          child: Container(
            width: deviceSize.width * 0.25,
            child: const FormLogin(),
          ),
        ),
      ],
    );
  }
}
