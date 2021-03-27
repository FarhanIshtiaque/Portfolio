// import 'dart:math';
// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:portfolio/widgets/customAppBar.dart';
// import 'package:portfolio/widgets/video_widget.dart';
//
// import 'package:url_launcher/url_launcher.dart';
//
//
// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   static const _flutterCommands = [
//     'I\'m a Flutter Developer',
//     'I\'m a UI Designer',
//     'I\'m a CS Engineer',
//     'I\'m a Freelancer ',
//     'And a Beautiful Smiler ',
//   ];
//
//   int _currentCommandIndex = 0;
//   bool onTt = false;
//   bool onFb = false;
//   bool onln = false;
//   bool onIn = false;
//   bool onGt = false;
//
//   void _nextCommand() {
//     setState(() {
//       _currentCommandIndex = _currentCommandIndex < _flutterCommands.length - 1
//           ? _currentCommandIndex + 1
//           : 0;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
//
//     return Scaffold(
//       body: Stack(
//         children: [
//           VideoWidget(),
//           Container(
//             height: height,
//             width: double.infinity,
//             color: Color.fromRGBO(0, 0, 0, .7),
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text(
//                 'Farhan Ishtiaque',
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                     fontFamily: 'Poppins',
//                     fontSize: 65),
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(
//                 height: 2,
//               Padding(
//                 padding: EdgeInsets.only(left: width * .4),
//                 child: TypeWriter(
//                   prefixText: '>',
//                   preFixTextStyle: TextStyle(
//                       color: Colors.white,
//                       fontSize: 30,
//                       fontWeight: FontWeight.bold),
//                   spacingAfterPrefix: 8,
//                   text: _flutterCommands[_currentCommandIndex],
//                   textStyle: TextStyle(
//                     fontWeight: FontWeight.w200,
//                     fontFamily: 'Poppins',
//                     fontSize: 30,
//                     color: Colors.white,
//                   ),
//                   cursorColor: Colors.white,
//                   onComplete: _nextCommand,
//                 ),
//               ),
//               SizedBox(height: 10,),
//
//
//             ],
//           ),
//           CustomAppBar(),
//           Positioned(
//             left: width * .93,
//             top: height * .7,
//             child: Column(
//               children: [
//                 MouseRegion(
//                   cursor: SystemMouseCursors.click,
//                   onEnter: (value) {
//                     setState(() {
//                       onTt = true;
//                     });
//                   },
//                   onExit: (value) {
//                     setState(() {
//                       onTt = false;
//                     });
//                   },
//                   child: GestureDetector(
//                     onTap: () {
//                       launch('https://twitter.com/rexfarhan');
//                     },
//                     child: SvgPicture.asset(
//                       'assets/Twitter - Negative.svg',
//                       color:
//                           onTt ? Color.fromRGBO(26, 145, 218, 1) : Colors.white,
//                       semanticsLabel: 'Twitter',
//                       width: 20,
//                       height: 20,
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 MouseRegion(
//                   cursor: SystemMouseCursors.click,
//                   onEnter: (value) {
//                     setState(() {
//                       onFb = true;
//                     });
//                   },
//                   onExit: (value) {
//                     setState(() {
//                       onFb = false;
//                     });
//                   },
//                   child: GestureDetector(
//
//                     onTap: () {
//                       launch('https://www.facebook.com/farhanishtiaque/');
//                     },
//                     child: SvgPicture.asset(
//                       'assets/Facebook - Negative.svg',
//                       color:
//                           onFb ? Color.fromRGBO(24, 119, 242, 1) : Colors.white,
//                       semanticsLabel: 'Facebook',
//                       width: 20,
//                       height: 20,
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 MouseRegion(
//                   cursor: SystemMouseCursors.click,
//                   onEnter: (value) {
//                     setState(() {
//                       onIn = true;
//                     });
//                   },
//                   onExit: (value) {
//                     setState(() {
//                       onIn = false;
//                     });
//                   },
//                   child: GestureDetector(
//                     onTap: () {
//                       launch('https://www.instagram.com/rexfarhan/');
//                     },
//                     child: SvgPicture.asset(
//                       'assets/Instagram - Negative.svg',
//                       color:
//                           onIn ? Color.fromRGBO(221, 42, 123, 1) : Colors.white,
//                       semanticsLabel: 'Instagram',
//                       width: 20,
//                       height: 20,
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 MouseRegion(
//                   cursor: SystemMouseCursors.click,
//                   onEnter: (value) {
//                     setState(() {
//                       onln = true;
//                     });
//                   },
//                   onExit: (value) {
//                     setState(() {
//                       onln = false;
//                     });
//                   },
//                   child: GestureDetector(
//                     onTap: () {
//                       launch(
//                           'https://www.linkedin.com/in/md-farhan-ishtiaque-43714b176/');
//                     },
//                     child: SvgPicture.asset(
//                       'assets/LinkedIn - Negative.svg',
//                       color:
//                           onln ? Color.fromRGBO(10, 102, 194, 1) : Colors.white,
//                       semanticsLabel: 'LinkedIn',
//                       width: 20,
//                       height: 20,
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 MouseRegion(
//                   cursor: SystemMouseCursors.click,
//                   onEnter: (value) {
//                     setState(() {
//                       onGt = true;
//                     });
//                   },
//                   onExit: (value) {
//                     setState(() {
//                       onGt = false;
//                     });
//                   },
//                   child: GestureDetector(
//                     onTap: () {
//                       launch('https://github.com/FarhanIshtiaque');
//                     },
//                     child: SvgPicture.asset(
//                       'assets/git.svg',
//                       color:
//                           onGt ? Color.fromRGBO(64, 120, 192, 1) : Colors.white,
//                       semanticsLabel: 'git',
//                       width: 20,
//                       height: 20,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
