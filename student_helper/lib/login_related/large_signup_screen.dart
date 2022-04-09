import 'package:flutter/material.dart';

import '../helpers/responsiveness.dart';
import 'form_login.dart';

class LargeSignUpScreen extends StatelessWidget {
  // const LargeSignUpScreen({Key? key}) : super(key: key);
  static const routeName = '/sign-up';
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Student Helper'),
      ),
      body: ResponsiveWidget(
        largeScreen: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      'Sign Up to \nStudent Helper',
                      style: TextStyle(
                        fontSize: 65,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Image.asset(
                      'images/reading.png',
                      height: 150,
                      width: 200,
                    ),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: deviceSize.height / 6),
                  child: Container(
                    width: deviceSize.width * 0.25,
                    child: const FormLogin(
                      isSmallScreen: false,
                      isLogin: false,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        smallScreen: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      'Sign Up to \nStudent Helper',
                      style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Image.asset(
                      'images/reading.png',
                      height: 150,
                      width: 200,
                    ),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: deviceSize.height / 12),
                  child: Container(
                    width: deviceSize.width * 0.75,
                    child: const FormLogin(
                      isSmallScreen: false,
                      isLogin: false,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
    // return
    // Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //   children: [
    //     Padding(
    //       padding: EdgeInsets.symmetric(vertical: deviceSize.height / 6),
    //       child: Container(
    //         width: deviceSize.width * 0.25,
    //         child: const FormLogin(
    //           isSmallScreen: false,
    //           isLogin: false,
    //         ),
    //       ),
    //     ),
    //   ],
    // );
  }
}
