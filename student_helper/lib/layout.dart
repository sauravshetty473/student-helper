import 'package:flutter/material.dart';
import 'helpers/responsiveness.dart';
import 'login_related/large_login_screen.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Student Helper'),
      ),
      // drawer: Drawer(
      //   child: SideMenu(),
      // ),
      body: ResponsiveWidget(
        largeScreen: ListView(
          children: const [
            LargeLoginScreen(),
          ],
        ),
      ),
    );
  }
}
