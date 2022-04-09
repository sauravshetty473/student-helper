import 'package:flutter/material.dart';
import 'package:student_helper/grammer_checker/input_text_box.dart';

class LargeGrammarScreen extends StatelessWidget {
  const LargeGrammarScreen({Key? key}) : super(key: key);

  Widget _getDetailWidget(
    String image,
    String text,
  ) {
    return Column(
      children: [
        Image.asset(
          image,
          height: 100,
          width: 100,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          text,
          style: const TextStyle(
            color: Colors.black54,
            // fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final TextEditingController _Textcontroller = TextEditingController();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: deviceSize.width * 0.5,
          margin: const EdgeInsets.all(25),
          padding: const EdgeInsets.all(10),
          child: const Text(
            'Grammar Check',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          width: deviceSize.width * 0.5,
          child: const Text(
            "Check your English text for grammar errors with grammar checker.",
            style: TextStyle(
              color: Colors.black45,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 100,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _getDetailWidget('images/error.png', 'Grammatical Errors'),
                const SizedBox(
                  height: 40,
                ),
                _getDetailWidget('images/grammar_one.png', 'Spelling Errors'),
              ],
            ),
            Container(
              width: deviceSize.width * 0.5,
              child: InputTextBox(
                textController: _Textcontroller,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _getDetailWidget('images/target.png', 'Incorrect Punctuation'),
                const SizedBox(
                  height: 40,
                ),
                _getDetailWidget('images/grammar.png', 'Misused Words'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
