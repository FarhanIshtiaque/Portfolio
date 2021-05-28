import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:portfolio/about/componets/skill_card.dart';
import 'package:portfolio/about/componets/testimonial_card.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutDesktop extends StatefulWidget {
  @override
  _AboutDesktopState createState() => _AboutDesktopState();
}

class _AboutDesktopState extends State<AboutDesktop> {
  bool onTt = false;
  bool onFb = false;
  bool onln = false;
  bool onIn = false;
  bool onGt = false;
  bool onText =false;
  bool onAbout = false;


  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    print(_size.width);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(),
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
              Row(
                children: [
                  Spacer(),
                  Container(
                    height: 508,
                    width: _size.width/3.25,
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
                    width: _size.width/2.03,
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
                        assetName: 'assets/UX.png',
                        description: 'Tools : Adobe XD,Figma',
                        shortDes:
                        'I can made beautiful UI/UX design \nfor your website or mobile app',
                      ),
                      SizedBox(
                        width: _size.width/42.68,
                      ),
                      SkillCard(
                        skillName: 'Mobile App Development',
                        assetName: 'assets/flt.png',
                        description: 'Language: Flutter(Android,iOS)',
                        shortDes:
                        'Apps with responsive UI, beautiful\nanimation with Firebase or Rest API',
                      ),
                      SizedBox(
                        width: _size.width/42.68,
                      ),
                      SkillCard(
                        skillName: 'Web Development',
                        assetName: 'assets/globe.png',
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
                    avater: 'boy.png',
                    clientName: 'Al-Imran Sujon',
                    designation: 'Co-Founder Insoul IT',
                    review: 'Farhan did an excellent creative job, addressing our request quickly, and also providing her own graphic insight, being open to feedback and changes or edits when they arose. Highly recommended.',
                  ),
                  SizedBox(width:_size.width/15.177 ,),
                  TestimonialCard(
                    avater: 'girl.png',
                    clientName: 'Elizabeth',
                    designation: 'Fiverr Customer',
                    review: 'Farhan did an excellent creative job, addressing our request quickly, and also providing her own graphic insight, being open to feedback and changes or edits when they arose. Highly recommended.',
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

Widget CustomAppBar(){
  return AppBar(
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
  );

}