import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/resume/resume_desktop.dart';
import 'package:portfolio/resume/resume_mobile.dart';

class Resume extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: ResumeScreenMobile(),
        tablet: Container(),
        desktop: ResumeScreenDesktop());
  }
}
