import 'package:flutter/material.dart';
import 'package:portfolio/portfolio/portfolio_screen_desktop.dart';
import 'package:portfolio/portfolio/portfolio_screen_mobile.dart';
import 'package:portfolio/responsive.dart';

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: PortfolioScreenMobile(),
        tablet: PortfolioScreenMobile(),
        desktop: PortfolioScreenDesktop());
  }
}
