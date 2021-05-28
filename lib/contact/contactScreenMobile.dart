import 'package:flutter/material.dart';

import 'package:get/route_manager.dart';
import 'package:portfolio/about/componets/header_info.dart';


class ContactScreenMobile extends StatefulWidget {
  @override
  _ContactScreenMobileState createState() => _ContactScreenMobileState();
}

class _ContactScreenMobileState extends State<ContactScreenMobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(),
      backgroundColor: Color.fromRGBO(16, 16, 16, 1),
      body:Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderInfo(
                smallHeader: 'Feel free to contact me anytime',
                bigHeader: 'Get In Touch',
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Message Me',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  SizedBox(height: 22,),
                  Container(


                    height: 44,
                    width: double.infinity,
                    color: Color.fromRGBO(22, 22, 22, 1),
                    child: TextFormField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(

                          contentPadding: EdgeInsets.only(left: 14,right: 14,top: 9,bottom: 9),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color:Color.fromRGBO(0, 158, 102, 1)),
                          ),


                          hintText: 'Name',
                          hintStyle: TextStyle(


                            fontWeight: FontWeight.w300,
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            color: Color(0xFFD9f9f9f),
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 35,),
                  Container(
                    height: 44,
                    width: double.infinity,
                    color: Color.fromRGBO(22, 22, 22, 1),
                    child: TextFormField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(

                          contentPadding: EdgeInsets.only(left: 14,right: 14,top: 9,bottom: 9),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color:Color.fromRGBO(0, 158, 102, 1)),
                          ),


                          hintText: 'Email',
                          hintStyle: TextStyle(


                            fontWeight: FontWeight.w300,
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            color: Color(0xFFD9f9f9f),
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 35,),
                  Container(
                    height: 44,
                    width: double.infinity,
                    color: Color.fromRGBO(22, 22, 22, 1),
                    child: TextFormField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 14,right: 14,top: 9,bottom: 9),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color:Color.fromRGBO(0, 158, 102, 1)),
                          ),
                          hintText: 'Subject',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            color: Color(0xFFD9f9f9f),
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 35,),
                  Container(
                    height: 142,
                    width: double.infinity,
                    color: Color.fromRGBO(22, 22, 22, 1),
                    child: TextFormField(

                      textInputAction: TextInputAction.newline,

                      expands: true,minLines: null, maxLines: null,
                      style: TextStyle(

                        color: Colors.white,
                      ),
                      decoration: InputDecoration(

                          contentPadding: EdgeInsets.only(left: 14,right: 14,top: 9,bottom: 9),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color:Color.fromRGBO(0, 209, 135, 1)),
                          ),


                          hintText: 'Message',
                          hintStyle: TextStyle(


                            fontWeight: FontWeight.w300,
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            color: Color(0xFFD9f9f9f),
                          )
                      ),
                    ),

                  ),
                  SizedBox(height: 35,),
                  Container(

                    alignment: Alignment.center,
                    height: 43,
                    width: 156,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color.fromRGBO(0, 158, 102, 1),

                    ),
                    child: Text(
                      'Send Message',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 30,),



                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40,),
                  Text('Contact Info',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 26,
                    ),
                  ),
                  SizedBox(height: 22,),
                  Text(
                    'Always available for freelance work if the right project\ncomes along, Feel free to contact me!',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      color: Color(0xFFD9f9f9f),
                    ),
                  ),
                  SizedBox(height: 20,),
                  ContactInfo(
                    cardName: 'Name',
                    iconName: 'contact-book.png',
                    info: 'Farhan Ishtiaque',
                  ),
                  ContactInfo(
                    cardName: 'Location',
                    iconName: 'placeholder.png',
                    info: 'Gazipur,Dhaka,Bangladesh',
                  ),
                  ContactInfo(
                    cardName: 'Phone',
                    iconName: 'phone-call.png',
                    info: '01521217973',
                  ),
                  ContactInfo(
                    cardName: 'Email',
                    iconName: 'envelope.png',
                    info: 'rexfarhan@gmail.com',
                  ),
                  SizedBox(height: 30,)

                ],
              ),
            ],
          ),
        ),
      ) ,
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
class ContactInfo extends StatelessWidget {
  final String iconName;

  final String cardName;
  final String info;

  const ContactInfo({
    Key key, this.iconName, this.cardName, this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(iconName,
          color: Color.fromRGBO(0, 158, 102, 1),
          height: 30,
          width: 40,
        ),
        SizedBox(width: 22,),
        Container(
          width: 2,
          height: 60,
          color: Color.fromRGBO(51, 51, 51, 1),
        ),
        SizedBox(width: 22,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cardName,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                fontFamily: 'Poppins',
                color: Colors.white,
              ),
            ),
            SizedBox(height: 3,),
            Text(
              info,
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
    );
  }
}


