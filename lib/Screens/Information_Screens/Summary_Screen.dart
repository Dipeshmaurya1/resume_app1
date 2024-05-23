import 'package:flutter/material.dart';

import 'Contact_Info_Screen.dart';

Widget SummaryHeadingScreen() {
  return SingleChildScrollView(
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Resume Heading',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.teal.shade300,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        TextFormField(
          controller: txtheading,
          decoration: InputDecoration(
              hintText: 'Resume Heading & Summary',
              hintStyle: TextStyle(
                  fontWeight: FontWeight.w400, fontSize: 18),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.teal.shade300, width: 3)),
              border: OutlineInputBorder(
                borderRadius:
                BorderRadius.only(bottomLeft: Radius.zero),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'For Example:',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
              Text(
                '1, Android Devloper with 7+ Years of experience',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
              Text(
                '2.Marketing Professional with international exposure',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
              Text(
                '3. Product Manager: Managed app with 10 million user base on Play Store',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              )
            ],
          ),
        ),
        Text(
          'Summary',
          style: TextStyle(
              fontSize: 20,
              color: Colors.teal.shade300,
              fontWeight: FontWeight.bold),
        ),
        TextFormField(
          maxLines: null,
          controller: txtsummary,
          decoration: InputDecoration(
              hintText: 'Summary',
              hintStyle: TextStyle(
                  fontWeight: FontWeight.w400, fontSize: 18),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.teal.shade300, width: 3)),
              border: OutlineInputBorder(
                borderRadius:
                BorderRadius.only(bottomLeft: Radius.zero),
              )),
        ),
      ],
    ),
  );
}