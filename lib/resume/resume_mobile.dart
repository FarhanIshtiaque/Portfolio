import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:portfolio/about/componets/header_info.dart';
import 'package:portfolio/resume/components/resume_item.dart';
import 'package:portfolio/resume/components/skill_bar.dart';
import 'package:portfolio/resume/resume_desktop.dart';

class ResumeScreenMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(),
      backgroundColor: Color.fromRGBO(16, 16, 16, 1),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                HeaderInfo(
                  smallHeader: 'Check out my Resume',
                  bigHeader: 'Resume',
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Education',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    SizedBox(
                      height: 37,
                    ),
                    ResumeItem(
                      itemText: 'BSc in Computer Science Engineering',
                      instName: 'North South University (2015-2020)',
                      description:
                          'Bashundhara, Dhaka-1229,\nBangladesh\nwedsite: www.northsouth.edu',
                    ),
                    ResumeItem(
                      itemText: 'HSC',
                      instName: 'Gazipur Cantornment College (2012-2014)',
                      description:
                          'Gazipur Cantonment,\nGazipur-1703, Bangladesh.\nwebsite: www.gccbof.edu.bd',
                    ),
                    ResumeItem(
                      itemText: 'SSC',
                      instName: 'BARI High School (2006-2012)',
                      description:
                          'Bangladesh Agricultural Research Institute,\nGazipur 1701\nwebsite: www.barihighschool.edu.bd',
                    ),
                    SizedBox(
                      height: 37,
                    ),

                    // ResumeItem(),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Experience',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    SizedBox(
                      height: 37,
                    ),
                    ResumeItem(
                      itemText: 'Junior Software Developer',
                      instName: 'INSOUL IT / (2020 - Present)',
                      description:
                          'Chandana, Chowrasta - Joydebpur Road,\nGazipur 1702\nwebsite: www.insoulit.com',
                    ),

                    // ResumeItem(),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    HeaderInfo(
                      bigHeader: 'My Skills',
                      smallHeader: 'My level of knowledge in some tools',
                    ),
                    SkillBar(
                      skillName: 'Flutter',
                      barWidth: (_size.width - 40) * .85,
                      percent: '85%',
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    SkillBar(
                      skillName: 'Java',
                      percent: '50%',
                      barWidth: (_size.width - 40) * .5,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    SkillBar(
                      skillName: 'Dart',
                      barWidth: (_size.width - 40) * .7,
                      percent: '70%',
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    SkillBar(
                      skillName: 'Firebase',
                      barWidth: _size.width - 40,
                      percent: '100%',
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    SkillBar(
                      skillName: 'UI Design',
                      percent: '95%',
                      barWidth: (_size.width - 40) * .95,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    SkillBar(
                      skillName: 'Adobe XD',
                      barWidth: (_size.width - 40) * .7,
                      percent: '70%',
                    ),
                    SizedBox(height: 50,)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ));
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
