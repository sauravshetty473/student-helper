import 'package:flutter/material.dart';
import 'package:student_helper/cover_letter/cover_letter_screen.dart';

Widget TextFieldWidget(
  String labeltext,
  String emptytexterror,
  int? maxlines,
) {
  return Container(
    child: Column(
      children: [
        TextFormField(
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
            validator: (input) {
              if (input!.isEmpty) {
                return emptytexterror;
              }
            },
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(5)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(5)),
                fillColor: new Color(0xff1D2033),
                filled: true,
                labelText: labeltext,
                labelStyle: TextStyle(color: Colors.white)),
            maxLines: maxlines ?? 1,
            onSaved: (input) {}),
        SizedBox(
          height: 20,
        ),
      ],
    ),
  );
}
