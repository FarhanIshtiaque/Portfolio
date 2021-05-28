import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../responsive.dart';

class SkillCardMobile extends StatelessWidget {
  final String description;
  final String assetName;
  final String skillName;

  const SkillCardMobile({Key key, this.description, this.assetName, this.skillName}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Container(


      width:Responsive.isTablet(context)?210: double.infinity,
      height:Responsive.isTablet(context)?220:250,
      // color: Color.fromRGBO(22, 22, 22, 1),
      decoration: BoxDecoration(
        border: Border.all(
          color:  Color.fromRGBO(0, 158, 102, 1),
          width: 1
        ),
        color: Color.fromRGBO(22, 22, 22, 1),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: Color.fromRGBO(0, 158, 102, 1),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            assetName,
            color: Color.fromRGBO(0, 158, 102, 1)
                ,
            height:Responsive.isTablet(context)?40: 50,
            width:Responsive.isTablet(context)?40: 50,
          ),
          SizedBox(
            height:Responsive.isTablet(context)?20: 30,
          ),
          Text(
            skillName,
            style: TextStyle(
              fontSize:Responsive.isTablet(context)?15: 20,
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              description,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15,
                fontFamily: 'Poppins',
                color: Color(0xFFD9f9f9f),
              ),
            ),
          )
        ],
      ),
    );
  }
}
