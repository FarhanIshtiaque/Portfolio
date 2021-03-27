import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  bool onTt = false;
  bool onFb = false;
  bool onln = false;
  bool onIn = false;
  bool onGt = false;
  bool onText =false;
  bool onAbout = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          Padding(padding: EdgeInsets.only(right: 70 ,top:10),
            child: IconButton(
              onPressed: (){
                Get.back();
              },
              icon: Icon(Icons.clear_outlined,
                size: 45,
                color: Colors.white,
              ),
              focusColor: Colors.transparent,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
          ),
        ],
      ),
      backgroundColor: Color.fromRGBO(16, 16, 16, 1),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [

              Column(
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  Center(
                    child: Text(
                      'Get to know me',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        color: Color(0xFFD9f9f9f),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 34,
                  ),
                  Center(
                    child: MouseRegion(
                      onExit: (value){
                        setState(() {
                          onAbout=false;
                        });
                      },
                      onEnter: (value){
                        setState(() {
                          onAbout=true;
                        });
                      },
                      child: AnimatedDefaultTextStyle(
                        child: Text(
                          'About Me',

                        ),
                        duration: Duration( milliseconds: 50 ),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 47,
                          fontFamily: 'Poppins',
                          color: onAbout?Color.fromRGBO(0, 158, 102, 1):Colors.white,
                        ),

                        curve: Curves.easeInOutSine,
                      ),
                    )
                  ),
                  SizedBox(
                    height: 37,
                  ),
                  Center(
                    child: Container(
                      height: 4,
                      width: 75,
                      color: Color.fromRGBO(0, 158, 102, 1),
                    ),
                  ),
                  SizedBox(
                    height: 83,
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Spacer(),
                      Container(
                        height: 508,
                        width: 420,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/farhan.jpg"),
                              fit: BoxFit.fill),
                        ),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Container(
                        width: 670,
                        height: 480,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Who am i?',
                              style: TextStyle(
                                fontSize: 24,
                                fontFamily: 'Poppins',
                                color: Color.fromRGBO(0, 158, 102, 1),
                              ),
                            ),
                            Text(
                              'I\'m Farhan Ishtiaque, a visual UX/UI Designer and Flutter Developer',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 31,
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'I am a freelancer based in the Bangladesh and i have been building noteworthy UX/UI designs and websites for years, which comply with the latest design trends. I help convert a vision and an idea into meaningful and useful products. Having a sharp eye for product evolution helps me prioritize tasks, iterate fast and deliver faster.',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                color: Color(0xFFD9f9f9f),
                              ),
                            ),
                            SizedBox(
                              height: 29,
                            ),
                            Container(
                              height: 1,
                              width: 670,
                              color: Color.fromRGBO(49, 49, 49, 1),
                            ),
                            SizedBox(
                              height: 29,
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MouseRegion(
                                      onEnter: (value){
                                        setState(() {
                                          onText= true;
                                        });
                                      },
                                      onExit: (value){
                                        setState(() {
                                          onText= false;
                                        });
                                      },
                                      child: AnimatedDefaultTextStyle(
                                          child: Text(
                                            'Name : Md Farhan Ishtiaque',
                                          ),
                                          style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 15,
                                            fontFamily: 'Poppins',
                                            color: onText?Color.fromRGBO(0, 158, 102, 1):Color(0xFFD9f9f9f),
                                          ),
                                          duration: Duration(milliseconds: 50)),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'Age : 25',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFD9f9f9f),
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Email: rexfarhan.com ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFD9f9f9f),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'From: Gazipur,Dhaka,Bangladesh',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFD9f9f9f),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 29,
                            ),
                            Row(
                              children: [
                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 200),
                                    alignment: Alignment.center,
                                    height: 43,
                                    width: 167,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Color.fromRGBO(0, 158, 102, 1),

                                    ),
                                    child: Text(
                                      'Download CV',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 23,
                                ),
                                Container(
                                  height: 2,
                                  width: 60,
                                  color: Color.fromRGBO(49, 49, 49, 1),
                                ),
                                SizedBox(
                                  width: 23,
                                ),
                                Row(
                                  children: [
                                    MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      onEnter: (value) {
                                        setState(() {
                                          onTt = true;
                                        });
                                      },
                                      onExit: (value) {
                                        setState(() {
                                          onTt = false;
                                        });
                                      },
                                      child: GestureDetector(
                                        onTap: () {
                                          launch(
                                              'https://twitter.com/rexfarhan');
                                        },
                                        child: AnimatedContainer(
                                          curve: Curves.easeOut,
                                          duration: Duration(milliseconds: 400),
                                          height: onTt ? 30 : 20,
                                          width: onTt ? 30 : 20,
                                          child: SvgPicture.asset(
                                              'assets/Twitter - Negative.svg',
                                              color: onTt
                                                  ? Color.fromRGBO(
                                                      26, 145, 218, 1)
                                                  : Colors.white,
                                              semanticsLabel: 'Twitter'),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      onEnter: (value) {
                                        setState(() {
                                          onFb = true;
                                        });
                                      },
                                      onExit: (value) {
                                        setState(() {
                                          onFb = false;
                                        });
                                      },
                                      child: GestureDetector(
                                        onTap: () {
                                          launch(
                                              'https://www.facebook.com/farhanishtiaque/');
                                        },
                                        child: AnimatedContainer(
                                          curve: Curves.easeOut,
                                          duration: Duration(milliseconds: 400),
                                          height: onFb ? 30 : 20,
                                          width: onFb ? 30 : 20,
                                          child: SvgPicture.asset(
                                            'assets/Facebook - Negative.svg',
                                            color: onFb
                                                ? Color.fromRGBO(
                                                    24, 119, 242, 1)
                                                : Colors.white,
                                            semanticsLabel: 'Facebook',
                                            width: onFb ? 40 : 20,
                                            height: onFb ? 40 : 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      onEnter: (value) {
                                        setState(() {
                                          onIn = true;
                                        });
                                      },
                                      onExit: (value) {
                                        setState(() {
                                          onIn = false;
                                        });
                                      },
                                      child: GestureDetector(
                                        onTap: () {
                                          launch(
                                              'https://www.instagram.com/rexfarhan/');
                                        },
                                        child: AnimatedContainer(
                                          curve: Curves.easeOut,
                                          duration: Duration(milliseconds: 400),
                                          height: onIn ? 30 : 20,
                                          width: onIn ? 30 : 20,
                                          child: SvgPicture.asset(
                                            'assets/Instagram - Negative.svg',
                                            color: onIn
                                                ? Color.fromRGBO(
                                                    221, 42, 123, 1)
                                                : Colors.white,
                                            semanticsLabel: 'Instagram',
                                            width: onIn ? 40 : 20,
                                            height: onIn ? 40 : 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      onEnter: (value) {
                                        setState(() {
                                          onln = true;
                                        });
                                      },
                                      onExit: (value) {
                                        setState(() {
                                          onln = false;
                                        });
                                      },
                                      child: GestureDetector(
                                        onTap: () {
                                          launch(
                                              'https://www.linkedin.com/in/md-farhan-ishtiaque-43714b176/');
                                        },
                                        child: AnimatedContainer(
                                          curve: Curves.easeOut,
                                          duration: Duration(milliseconds: 400),
                                          height: onln ? 30 : 20,
                                          width: onln ? 30 : 20,
                                          child: SvgPicture.asset(
                                            'assets/LinkedIn - Negative.svg',
                                            color: onln
                                                ? Color.fromRGBO(
                                                    10, 102, 194, 1)
                                                : Colors.white,
                                            semanticsLabel: 'LinkedIn',
                                            width: onln ? 40 : 20,
                                            height: onln ? 40 : 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      onEnter: (value) {
                                        setState(() {
                                          onGt = true;
                                        });
                                      },
                                      onExit: (value) {
                                        setState(() {
                                          onGt = false;
                                        });
                                      },
                                      child: GestureDetector(
                                        onTap: () {
                                          launch(
                                              'https://github.com/FarhanIshtiaque');
                                        },
                                        child: AnimatedContainer(
                                          curve: Curves.easeOut,
                                          duration: Duration(milliseconds: 400),
                                          height: onGt ? 30 : 20,
                                          width: onGt ? 30 : 20,
                                          child: SvgPicture.asset(
                                            'assets/git.svg',
                                            color: onGt
                                                ? Color.fromRGBO(
                                                    64, 120, 192, 1)
                                                : Colors.white,
                                            semanticsLabel: 'git',
                                            width: onGt ? 40 : 20,
                                            height: onGt ? 40 : 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 120,
              ),
              Column(
                children: [
                  Column(
                    children: [
                      Center(
                        child: Text(
                          'Services i offer to my clients',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            color: Color(0xFFD9f9f9f),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Center(
                        child: MouseRegion(
                          onExit: (value){
                            setState(() {
                              onAbout=false;
                            });
                          },
                          onEnter: (value){
                            setState(() {
                              onAbout=true;
                            });
                          },
                          child: AnimatedDefaultTextStyle(
                            child: Text(
                              'My Services',

                            ),
                            duration: Duration( milliseconds: 50 ),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 47,
                              fontFamily: 'Poppins',
                              color: onAbout?Color.fromRGBO(0, 158, 102, 1):Colors.white,
                            ),

                            curve: Curves.easeInOutSine,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Spacer(),
                      SkillCard(
                        skillName: 'UI/UX Design',
                        assetName: 'assets/ux.svg',
                        description: 'Tools : Adobe XD,Figma',
                        shortDes:
                            'I can made beautiful UI/UX design \nfor your website or mobile app',
                      ),
                      SizedBox(
                        width: 32,
                      ),
                      SkillCard(
                        skillName: 'Mobile App Development',
                        assetName: 'assets/flutter.svg',
                        description: 'Language: Flutter(Android,iOS)',
                        shortDes:
                            'Apps with responsive UI, beautiful\nanimation with Firebase or Rest API',
                      ),
                      SizedBox(
                        width: 32,
                      ),
                      SkillCard(
                        skillName: 'Web Development',
                        assetName: 'assets/www.svg',
                        description: 'Language: Flutter,Laravel',
                        shortDes:
                            'I can make full responsive website\nwith flutter and laravel backend',
                      ),
                      Spacer()
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 120,
              ),
              Column(
                children: [
                  Center(
                    child: Text(
                      'What my clients think about me',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        color: Color(0xFFD9f9f9f),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 34,
                  ),
                  Center(
                    child: MouseRegion(
                      onExit: (value){
                        setState(() {
                          onAbout=false;
                        });
                      },
                      onEnter: (value){
                        setState(() {
                          onAbout=true;
                        });
                      },
                      child: AnimatedDefaultTextStyle(
                        child: Text(
                          'Testimonials',

                        ),
                        duration: Duration( milliseconds: 50 ),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 47,
                          fontFamily: 'Poppins',
                          color: onAbout?Color.fromRGBO(0, 158, 102, 1):Colors.white,
                        ),

                        curve: Curves.easeInOutSine,
                      ),
                    )
                  ),
                  SizedBox(height: 50,)
                ],
              ),
              Row(
                children: [
                  Spacer(),
                  TestimonialCard(
                    avater: 'boy.svg',
                    clientName: 'Al-Imran Sujon',
                    designation: 'Co-Founder Insoul IT',
                    review: 'Farhan did an excellent creative job, addressing our request quickly, and also providing her own graphic insight, being open to feedback and changes or edits when they arose. She worked with us the entire way. Highly recommended.',
                  ),
                  SizedBox(width:90 ,),
                  TestimonialCard(
                    avater: 'girl.svg',
                    clientName: 'Elizabeth',
                    designation: 'Fiverr Customer',
                    review: 'Farhan did an excellent creative job, addressing our request quickly, and also providing her own graphic insight, being open to feedback and changes or edits when they arose. She worked with us the entire way. Highly recommended.',
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(height: 100,)
            ],
          ),
        ),
      ),
    );
  }
}

class TestimonialCard extends StatefulWidget {
  final String avater;
  final String clientName;
  final String designation;
  final String review;
  const TestimonialCard({
    Key key, this.avater, this.clientName, this.designation, this.review,
  }) : super(key: key);


  @override
  _TestimonialCardState createState() => _TestimonialCardState();
}

class _TestimonialCardState extends State<TestimonialCard> {
  bool onCon = false;
  @override
  Widget build(BuildContext context) {

    return MouseRegion(
      onEnter: (value){
        setState(() {
          onCon =true;
        });
      },
      onExit: (value){
        setState(() {
          onCon =false;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        curve: Curves.easeOut,
        height: 242 ,
        width: 530,


        decoration: BoxDecoration(
          color: Color.fromRGBO(22, 22, 22, 1),
          boxShadow: onCon?[
            BoxShadow(
              blurRadius: 10,
              color: Color.fromRGBO(0, 158, 102, 1),
            )
          ]: [],
        ),
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              Row(
                children: [
                  SvgPicture.asset(widget.avater,
                    width: 54,
                    height: 54,
                  ),
                  SizedBox(width: 5,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.clientName,
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        widget.designation,
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          color: Color(0xFFD9f9f9f),
                        ),
                      ),
                    ],

                  ),
                  Spacer(),
                  SvgPicture.asset('quote.svg',
                    width: 50,
                    height: 50,
                    color:onCon?Color.fromRGBO(0, 158, 102, 1):Colors.white,
                  )

                ],
              ),
              SizedBox(height: 15,),
              Text(
                widget.review,
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  color: Color(0xFFD9f9f9f),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SkillCard extends StatefulWidget {
  final String skillName;

  final String assetName;
  final String description;
  final String shortDes;

  const SkillCard({
    Key key,
    this.skillName,
    this.assetName,
    this.description,
    this.shortDes,
  }) : super(key: key);

  @override
  _SkillCardState createState() => _SkillCardState();
}

class _SkillCardState extends State<SkillCard> {
  bool onContainer = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 362,
      color: Color.fromRGBO(15, 15, 15, 15),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: MouseRegion(
              onEnter: (value) {
                setState(() {
                  onContainer = true;
                });
              },
              onExit: (value) {
                setState(() {
                  onContainer = false;
                });
              },
              child: AnimatedContainer(
                curve: Curves.easeOut,
                duration: Duration(milliseconds: 300),
                width: onContainer ? 362 : 330,
                height: onContainer ? 248 : 220,
                // color: Color.fromRGBO(22, 22, 22, 1),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(22, 22, 22, 1),
                  boxShadow: onContainer?[
                    BoxShadow(
                      blurRadius: 10,
                      color: Color.fromRGBO(0, 158, 102, 1),
                    )
                  ]: [],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      widget.assetName,
                      color: onContainer
                          ? Color.fromRGBO(0, 158, 102, 1)
                          : Colors.white,
                      height: 55,
                      width: 55,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      widget.skillName,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Stack(
                      children: [
                        Center(
                          child: Opacity(
                            opacity: onContainer ? 0 : 1,
                            child: Text(
                              widget.description,
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                color: Color(0xFFD9f9f9f),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Opacity(
                            opacity: onContainer ? 1 : 0,
                            child: Text(
                              widget.shortDes,
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                color: Color(0xFFD9f9f9f),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            curve: Curves.easeOut,
            alignment: Alignment.bottomCenter,
            height: 2,
            width: onContainer ? 362 : 330,
            color: onContainer
                ? Color.fromRGBO(0, 158, 102, 1)
                : Colors.transparent,
          )
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// class About extends StatefulWidget {
//   // final Animation<double> transitionAnimation;
//
//   // const About({
//   //   Key key,
//   //   // this.transitionAnimation,
//   // }) : super(key: key);
//
//   @override
//   _AboutState createState() => _AboutState();
// }
//
// class _AboutState extends State<About> {
//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: Color.fromRGBO(16, 16, 16, 1),
//       body: Container(
//
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 70,
//               ),
//               Column(
//                 children: [
//                   Center(
//                     child: Text(
//                       'Get to know me',
//                       style: TextStyle(
//                         fontWeight: FontWeight.w300,
//                         fontSize: 15,
//                         fontFamily: 'Poppins',
//                         color: Color(0xFFD9f9f9f),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 34,
//                   ),
//                   Center(
//                     child: Text(
//                       'About Me',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 47,
//                         fontFamily: 'Poppins',
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 37,
//                   ),
//                   Center(
//                     child: Container(
//                       height: 5,
//                       width: 75,
//                       color: Color.fromRGBO(0, 158, 102, 1),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 83,
//                   ),
//                 ],
//               ),
//               // Column(
//               //   children: [
//               //
//               //
//               //     Row(
//               //       children: [
//               //         Spacer(),
//               //         // Container(
//               //         //   height: 508,
//               //         //   width: 420,
//               //         //   decoration: BoxDecoration(
//               //         //     image: DecorationImage(
//               //         //         image: AssetImage("assets/farhan.jpg"),
//               //         //         fit: BoxFit.fill),
//               //         //   ),
//               //         // ),
//               //         SizedBox(
//               //           width: 50,
//               //         ),
//               //         // Container(
//               //         //   width: 670,
//               //         //   child: Column(
//               //         //     children: [
//               //         //       Text(
//               //         //         'Who am i?',
//               //         //         style: TextStyle(
//               //         //
//               //         //           fontSize: 24,
//               //         //           fontFamily: 'Poppins',
//               //         //           color: Color.fromRGBO(0, 158, 102, 1),
//               //         //         ),
//               //         //       ),
//               //         //       Text(
//               //         //         'I\'m Farhan Ishtiaque, a visual UX/UI Designer and Flutter Developer',
//               //         //         style: TextStyle(
//               //         //           fontWeight: FontWeight.bold,
//               //         //
//               //         //           fontSize: 31,
//               //         //           fontFamily: 'Poppins',
//               //         //           color: Colors.white,
//               //         //         ),
//               //         //       )
//               //         //     ],
//               //         //   ),
//               //         // ),
//               //         Spacer(),
//               //       ],
//               //     )
//               //   ],
//               // )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// //  Expanded(
// //   child: AnimatedBuilder(
// //     animation: transitionAnimation,
// //     builder: (context, child) {
// //       return SlideTransition(
// //         position: Tween<Offset>(
// //           begin: Offset(0, 1),
// //           end: Offset(0, -1),
// //         ).animate(
// //           CurvedAnimation(
// //             curve: Interval(0, 1, curve: Curves.ease),
// //             parent: transitionAnimation,
// //           ),
// //         ),
// //         child: child,
// //       );
// //     },
// //     child: Container(
// //       color: Color.fromRGBO(22, 22, 22, 1),
// //
// //
// //     ),
// //   ),
// // ),
