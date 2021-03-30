import 'package:flutter/material.dart';
import 'package:portfolio/about/about_desktop.dart';
import 'package:portfolio/about/about_mobile.dart';
import 'package:portfolio/responsive.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: AboutMobile(),
        tablet: Container(
          color: Colors.black,
        ),
        desktop: AboutDesktop(),
    );
  }
}
