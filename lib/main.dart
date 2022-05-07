
import 'package:ecommerce_app/Screens/InformationScreen.dart';
import 'package:ecommerce_app/Screens/loginScreen.dart';
import 'package:flutter/material.dart';

import 'Screens/ShippingInfo.dart';
import 'Screens/SignupScreen.dart';
import 'Screens/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}
