import 'package:flutter/material.dart';

import 'Contact_Info_Screen.dart';

Widget EducationScreen() {
  return SingleChildScrollView(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Career Objective',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.teal.shade300,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        TextFormField(
          keyboardType: TextInputType.multiline,
          textInputAction: TextInputAction.newline,
          maxLines: null,
          controller: txtobjective,
          decoration: InputDecoration(
              hintText: 'Career Objective',
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.teal.shade300, width: 3)),
              border: OutlineInputBorder(
                borderRadius:
                BorderRadius.only(bottomLeft: Radius.zero),
              )),
        ),
        FloatingActionButton(onPressed: (){},child: Icon(Icons.add_circle_outline_outlined),),
      ],
    ),
  );
}