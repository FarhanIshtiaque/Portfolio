import 'package:flutter/material.dart';



import 'package:flutter/foundation.dart' ;
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 250,

      color: Color.fromRGBO(22, 22, 22, 1),
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(

            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/boy.svg",
                    width: 20,
                    height: 20,
                  ),
                  Spacer(),
                  // We don't want to show this close button on Desktop mood
                  CloseButton(
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text('About',
                style: TextStyle(
                  color: Colors.white,
                  height: 20,
                   fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),


              SizedBox(height: 20),

              // Menu Items

              Text('Resume',
                style: TextStyle(
                  color: Colors.white,
                  height: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),



              SizedBox(height:20),
              // Tags
              Text('Portfolio',
                style: TextStyle(
                  color: Colors.white,
                  height: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height:20),
              Text('Contact',
                style: TextStyle(
                  color: Colors.white,
                  height: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

