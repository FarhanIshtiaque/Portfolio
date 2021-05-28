import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:portfolio/about/about.dart';

import 'package:portfolio/home/homeScreen.dart';
import 'package:portfolio/portfolio/porfolio.dart';
import 'package:portfolio/resume/resume.dart';

import 'package:url_strategy/url_strategy.dart';

import 'contact/contact.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: '/splash',
      getPages: [
        GetPage(
          name: '/',
          page: () => HomeScreen(),
        ),
        GetPage(
          name: '/about/',
          page: () => About(),
          transition: Transition.downToUp,
          curve: Curves.easeIn,
          transitionDuration: Duration( seconds: 1 ),
        ),

        GetPage(
          name: '/resume',
          page: () => Resume(),
          transition: Transition.downToUp,
          curve: Curves.easeIn,
          transitionDuration: Duration( seconds: 1 ),
        ),
        GetPage(
          name: '/portfolio',
          page: () => Portfolio(),
          transition: Transition.downToUp,
          curve: Curves.easeIn,
          transitionDuration: Duration( seconds: 1 ),

        ),
        GetPage(
          name: '/contact',
          page: () => Contact(),
          transition: Transition.downToUp,
          curve: Curves.easeIn,
          transitionDuration: Duration( seconds: 1 ),

        ),
      ],
    );

  }
}