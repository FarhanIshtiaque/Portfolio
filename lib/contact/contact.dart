import 'package:flutter/material.dart';
import 'package:portfolio/contact/contactScreenDesktop.dart';
import 'package:portfolio/responsive.dart';
class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: Container(), tablet: Container(), desktop: ContactScreenDesktop());
  }
}
