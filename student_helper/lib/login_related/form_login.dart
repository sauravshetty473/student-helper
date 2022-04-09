import 'package:flutter/material.dart';

class FormLogin extends StatelessWidget {
  const FormLogin({
    Key? key,
    required this.isSmallScreen,
    required this.isLogin,
  }) : super(key: key);
  final bool isSmallScreen;
  final bool isLogin;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          style: const TextStyle(
            fontSize: 18,
          ),
          decoration: InputDecoration(
            hintText: 'Enter email id',
            fillColor: Colors.blueGrey[50],
            filled: true,
            labelStyle: const TextStyle(fontSize: 12),
            contentPadding: const EdgeInsets.only(
              left: 30,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xFFECEFF1)),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xFFECEFF1)),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          style: const TextStyle(
            fontSize: 18,
          ),
          decoration: InputDecoration(
            hintText: 'Password',
            counterText: isLogin ? 'Forgot Password?' : '',
            suffixIcon: const Icon(
              Icons.visibility_off_outlined,
              color: Colors.grey,
            ),
            fillColor: Colors.blueGrey[50],
            filled: true,
            labelStyle: const TextStyle(fontSize: 12),
            contentPadding: const EdgeInsets.only(
              left: 30,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xFFECEFF1)),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xFFECEFF1)),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        !isLogin
            ? TextField(
                style: const TextStyle(
                  fontSize: 18,
                ),
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  fillColor: Colors.blueGrey[50],
                  filled: true,
                  labelStyle: const TextStyle(fontSize: 12),
                  suffixIcon: const Icon(
                    Icons.visibility_off_outlined,
                    color: Colors.grey,
                  ),
                  contentPadding: const EdgeInsets.only(
                    left: 30,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFFECEFF1)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFFECEFF1)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              )
            : const SizedBox(),
        const SizedBox(
          height: 40,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                color: Color(0xFFD1C4E9),
                spreadRadius: 10,
                blurRadius: 20,
              )
            ],
          ),
          child: ElevatedButton(
            onPressed: () {},
            child: Container(
              width: double.infinity,
              height: 50,
              child: Center(
                child: Text(
                  isLogin ? 'Sign In' : 'Sign Up',
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.deepPurple,
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          children: [
            Expanded(
              child: Divider(
                height: 50,
                color: Colors.grey[300],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                'Or continue with',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Expanded(
              child: Divider(
                height: 50,
                color: Colors.grey[300],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            loginButton(
              'images/search.png',
            ),
            loginButton(
              'images/github.png',
            ),
            loginButton(
              'images/facebook.png',
            ),
          ],
        ),
      ],
    );
  }
}

Widget loginButton(
  String image, {
  bool isActive = false,
}) {
  return Container(
    width: 90,
    height: 70,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      border: Border.all(color: const Color(0xFFBDBDBD)),
    ),
    child: Center(
      child: Container(
        child: Image.asset(
          image,
          width: 30,
        ),
      ),
    ),
  );
}
