import 'package:flutter/material.dart';

class InputTextBox extends StatelessWidget {
  const InputTextBox({
    Key? key,
    required this.textController,
  }) : super(key: key);
  final textController;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              style: const TextStyle(
                fontSize: 20,
              ),
              controller: textController,
              minLines: 8,
              maxLines: 8,
              keyboardType: TextInputType.multiline,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(20.0),
                hintText: 'Enter Your Text Here',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            width: 300,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Check",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
