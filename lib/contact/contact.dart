import 'package:flutter/material.dart';
import 'package:portfolio/contact/contactScreenDesktop.dart';
import 'package:portfolio/contact/contactScreenMobile.dart';
import 'package:portfolio/responsive.dart';
class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: ContactScreenMobile(), tablet: Container(), desktop: ContactScreenDesktop());
  }
}
