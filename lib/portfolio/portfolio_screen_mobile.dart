
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:portfolio/about/componets/header_info.dart';

class PortfolioScreenMobile extends StatefulWidget {
  @override
  _PortfolioScreenMobileState createState() => _PortfolioScreenMobileState();
}

class _PortfolioScreenMobileState extends State<PortfolioScreenMobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      extendBodyBehindAppBar: true,
        appBar: CustomAppBar(),
        backgroundColor: Color.fromRGBO(16, 16, 16, 1),
        body: Container(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                HeaderInfo(
                  smallHeader: 'Some things I\'ve built',
                  bigHeader: 'Portfolio',
                ),
                Stack(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 360,
                          width: double.infinity,
                          child: Image.asset('assets/portfolio.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Opacity(
                           opacity: .6,
                          child: Container(
                            height: 360,
                            width: double.infinity,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(

                        children: [
                          Text('Featured Project',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Color.fromRGBO(0, 158, 102, 1),
                              fontSize: 12,
                              fontFamily: 'Poppins'
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),

          ),
        ),
    ),);
  }
}
Widget CustomAppBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    actions: [
      Padding(
        padding: EdgeInsets.only(right: 30, top: 10),
        child: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.clear_outlined,
            size: 35,
            color: Colors.white,
          ),
          focusColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
      ),
    ],
  );
}
