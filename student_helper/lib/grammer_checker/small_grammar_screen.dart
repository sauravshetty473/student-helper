import 'package:flutter/material.dart';

import 'input_text_box.dart';

class SmallGrammarScreen extends StatelessWidget {
  const SmallGrammarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final TextEditingController _Textcontroller = TextEditingController();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            width: deviceSize.width * 0.8,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(8),
            child: const Text(
              'Grammar Check',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: deviceSize.width * 0.8,
            child: const Text(
              "Check your English text for grammar errors with grammar checker.",
              style: TextStyle(
                color: Colors.black45,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            width: deviceSize.width * 0.8,
            child: InputTextBox(
              textController: _Textcontroller,
            ),
          ),
        ],
      ),
    );
  }
}
