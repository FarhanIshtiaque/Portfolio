import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:portfolio/about/componets/TestimonialCardMobile.dart';
import 'package:portfolio/about/componets/header_info.dart';
import 'package:portfolio/about/componets/skillCardMobile.dart';
import 'package:portfolio/responsive.dart';

import 'package:portfolio/widgets/social.dart';

class AboutMobile extends StatefulWidget {
  @override
  _AboutMobileState createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(),
      backgroundColor: Color.fromRGBO(16, 16, 16, 1),
      body: Container(
        padding: EdgeInsets.only(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderInfo(
                smallHeader: 'Get to know me',
                bigHeader: 'About me',
              ),
              Column(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/farhanmini.jpg"),
                          fit: BoxFit.fill),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Who am i?',
                      style: TextStyle(
                        fontSize:Responsive.isTablet(context)?22: 18,
                        fontFamily: 'Poppins',
                        color: Color.fromRGBO(0, 158, 102, 1),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'I\'m Farhan Ishtiaque, a visual UX/UI Designer and Flutter Developer',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize:Responsive.isTablet(context)?25: 22,
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'I am a freelancer based in the Bangladesh and i have been building noteworthy UX/UI designs and websites for years, which comply with the latest design trends. I help convert a vision and an idea into meaningful and useful products. Having a sharp eye for product evolution helps me prioritize tasks, iterate fast and deliver faster.',
                      style: TextStyle(
                        height: 2,
                        fontWeight: FontWeight.w400,
                        fontSize:Responsive.isTablet(context)?16: 14,
                        fontFamily: 'Poppins',
                        color: Color(0xFFD9f9f9f),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: Color.fromRGBO(49, 49, 49, 1),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      'Name:  Farhan Ishtiaque',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize:Responsive.isTablet(context)?16: 14,
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Email: rexfarhan@gmail.com',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: Responsive.isTablet(context)?16
                        :14,
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Age:  21',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize:Responsive.isTablet(context)?16: 14,
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'From:  Gazipur,Dhaka,Bangladesh',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: Responsive.isTablet(context)?16:14,
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
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
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 2,
                          width: 60,
                          color: Color.fromRGBO(49, 49, 49, 1),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SocialIcon(),
                      ],
                    )
                  ],
                ),
              ),
              HeaderInfo(
                bigHeader: 'My Services',
                smallHeader: 'Service i offer to my client',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Responsive.isTablet(context)
                    ? Row(
                        children: [
                          Expanded(
                            child: SkillCardMobile(
                              skillName: 'UI/UX Design',
                              assetName: 'assets/ux.svg',
                              description: 'Tools : Adobe XD,Figma',
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: SkillCardMobile(
                              skillName: 'Mobile App Development',
                              assetName: 'assets/flutter.svg',
                              description: 'Framework: Flutter',
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: SkillCardMobile(
                              skillName: 'Web Development',
                              assetName: 'assets/www.svg',
                              description: 'Language: Flutter,Laravel',
                            ),
                          )
                        ],
                      )
                    : Column(
                        children: [
                          SkillCardMobile(
                            skillName: 'UI/UX Design',
                            assetName: 'assets/ux.svg',
                            description: 'Tools : Adobe XD,Figma',
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SkillCardMobile(
                            skillName: 'Mobile App Development',
                            assetName: 'assets/flutter.svg',
                            description: 'Framework: Flutter(Android,iOS)',
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SkillCardMobile(
                            skillName: 'Web Development',
                            assetName: 'assets/www.svg',
                            description: 'Language: Flutter,Laravel',
                          )
                        ],
                      ),
              ),
              HeaderInfo(
                bigHeader: 'Testimonials',
                smallHeader: 'What my clients think about me',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    TestimonialCardMobile(
                      avater: 'boy.png',
                      clientName: 'Al-Imran Sujon',
                      designation: 'Co-Founder Insoul IT',
                      review:
                          'Farhan did an excellent creative job, addressing our request quickly, and also providing her own graphic insight, being open to feedback and changes or edits when they arose. Highly recommended.',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 80,
              )
            ],
          ),
        ),
      ),
    );
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
