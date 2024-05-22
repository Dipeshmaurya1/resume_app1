// import 'dart:js';

// import 'dart:js';

import 'package:flutter/material.dart';

import 'Screens/Entry_Screen/HomePage.dart';
import 'Screens/Information_Screens/Contact_Info_Screen.dart';
class AppRoutes
{
  static Map<String,Widget Function(BuildContext)>routes=
  {
      '/':(context)=>Homepage(),
    '/contact':(context)=>ContactInfo(),
  };
}