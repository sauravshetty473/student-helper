import 'package:flutter/material.dart';
import 'grammer_checker/large_grammar_screen.dart';
import 'grammer_checker/small_grammar_screen.dart';
import 'helpers/responsiveness.dart';

class GrammarLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Student Helper | Grammar Checker'),
      ),
      body: ResponsiveWidget(
        largeScreen: ListView(
          children: const [
            LargeGrammarScreen(),
          ],
        ),
        smallScreen: ListView(
          children: const [
            SmallGrammarScreen(),
          ],
        ),
      ),
    );
  }
}
