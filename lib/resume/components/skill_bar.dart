import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';
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
                width: Responsive.isMobile((context))?width:  width/2.48,
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