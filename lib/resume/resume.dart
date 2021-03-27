import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
class Resume extends StatefulWidget {
  @override
  _ResumeState createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
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
      extendBodyBehindAppBar: true,
      backgroundColor: Color.fromRGBO(16, 16, 16, 1),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Column(
                children: [
                  Center(
                    child: Text(
                      'Check out my Resume',
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
                    child: Text(
                      'Resume',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 47,
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                    ),
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
              Row( crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
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
                        description: 'Bashundhara, Dhaka-1229, Bangladesh\nwedsite: www.northsouth.edu',
                      ),
                      ResumeItem(
                        itemText: 'HSC',
                        instName: 'Gazipur Cantornment College (2012-2014)',

                        description: 'Gazipur Cantonment College\nGazipur Cantonment, Gazipur-1703, Bangladesh.\nwebsite: www.gccbof.edu.bd',
                      ),
                      ResumeItem(
                        itemText: 'SSC',

                        instName: 'BARI High School (2006-2012)',
                        description: 'Bangladesh Agricultural Research Institute, Gazipur 1701\nwebsite: www.barihighschool.edu.bd',
                      ),
                      // ResumeItem(),
                    ],
                  ),
                  SizedBox(width: width/22.8),
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
                        description: 'Chandana, Chowrasta - Joydebpur Road,Gazipur 1702\nwebsite: www.insoulit.com',
                      ),

                      // ResumeItem(),
                    ],
                  ),
                  Spacer()
                ],
              ),
              Column(
                children: [
                  SizedBox(height: 120,),
                  Text('My level of knowledge in some tools',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      color: Color(0xFFD9f9f9f),
                    ),
                  ),
                  SizedBox(height: 17,),
                  Text('My Skills',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 47,
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 50,),
                  Row(
                    children: [
                      Spacer(),
                      Column(
                        children: [
                          SkillBar(
                            skillName: 'Flutter',
                            barWidth: (width/2.48)*.85,
                            percent: '85%',
                          ),
                          SizedBox(height: 42,),
                          SkillBar(
                            skillName: 'Java',
                            percent: '50%',
                            barWidth: (width/2.48)*.5,

                          ),
                          SizedBox(height: 42,),
                          SkillBar(
                            skillName: 'Dart',
                            barWidth: (width/2.48)*.7,
                            percent: '70%',
                          ),
                          SizedBox(height: 42,),

                        ],
                      ),
                      SizedBox(width: width/22.8,),
                      Column(
                        children: [
                          SkillBar(
                            skillName: 'Firebase',
                            barWidth: width/2.48,
                            percent: '100%',
                          ),
                          SizedBox(height: 42,),
                          SkillBar(
                            skillName: 'UI Design',
                            percent: '95%',
                            barWidth: (width/2.48)*.95,

                          ),
                          SizedBox(height: 42,),
                          SkillBar(
                            skillName: 'Adobe XD',
                            barWidth: (width/2.48)*.7,
                            percent: '70%',
                          ),
                          SizedBox(height: 42,),

                        ],
                      ),
                      Spacer(),
                    ],
                  ),




                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
class SkillBar extends StatelessWidget {
  final String skillName;
  final String percent;
  final double barWidth;
  const SkillBar({
    this.barWidth,
    this.percent,
    this.skillName,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 22,
          width: barWidth,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(skillName,
                style: TextStyle(
                  fontWeight: FontWeight.w300,

                  fontSize: 16,
                  fontFamily: 'Poppins',
                  color: Color.fromRGBO(206, 206, 206, 1),
                ),
              ),
              Spacer(),
              Text(percent,
                style: TextStyle(
                  fontWeight: FontWeight.w400,

                  fontSize: 16,
                  fontFamily: 'Poppins',
                  color: Color.fromRGBO(206, 206, 206, 1),
                ),
              ),
            ],
          ),
        ),


        Padding(
          padding: const EdgeInsets.only(top: 7,bottom: 7),
          child: Stack(
            children: [
              Container(
                height:9,
                width: width/2.48,
                color : Color.fromRGBO(47, 47, 47, 1) ,
              ),
              Container(
                height:9,
                width: barWidth,
                color : Color.fromRGBO(0, 158, 102, 1) ,
              ),
            ],
          ),
        )


      ],
    );
  }
}

class ResumeItem extends StatelessWidget {
  final String itemText;
  final String instName;
  final String description;

  const ResumeItem({


    this.itemText,
    this.instName,
    this.description,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          width: width/2.48,
          height: 183,
          color: Color.fromRGBO(22, 22, 22, 1),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 183,
                    width: 2,
                    color: Color.fromRGBO(0, 158, 102, 1),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 1,
                    width: 555,
                    color: Color.fromRGBO(49, 49, 49, 1),
                  )
                ],
              ),
              Positioned(
                top: 37,
                left: 0,
                child: ClipPath(
                  clipper: indicatorClipper(),
                  child: Container(
                    height: 16,
                    width: 32,
                    color: Color.fromRGBO(0, 158, 102, 1),
                  ),
                ),
              ),
              Positioned(
                top: 32,
                left: 48,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      itemText,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Text(
                      instName,
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                        color: Color(0xFFD9f9f9f),
                        fontFamily: 'Poppins',
                      ),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Text(
                      description,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                        color: Color(0xFFD9f9f9f),
                        fontFamily: 'Poppins',
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class indicatorClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(16, 0);
    path.lineTo(24, 8);
    path.lineTo(16, 16);
    path.lineTo(0, 16);
    path.lineTo(0, 0);

    return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
