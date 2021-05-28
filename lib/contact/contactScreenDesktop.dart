import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/route_manager.dart';
class ContactScreenDesktop extends StatefulWidget {
  @override
  _ContactScreenDesktopState createState() => _ContactScreenDesktopState();
}

class _ContactScreenDesktopState extends State<ContactScreenDesktop> {
  bool onText =false;
  bool onAbout = false;
  @override
  Widget build(BuildContext context) {
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
              Column(
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  Center(
                    child: Text(
                      'Feel free to contact me anytime',
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
                            'Get in Touch',

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Message Me',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 36,
                        ),

                      ),
                      SizedBox(height: 22,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(


                            height: 44,
                            width: 320,
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
                          SizedBox(width: 30,),
                          Container(


                            height: 44,
                            width: 320,
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
                        ],
                      ),
                      SizedBox(height: 25,),
                      Container(
                        color: Color.fromRGBO(22, 22, 22, 1),
                        width: 670,
                        height: 44,

                        child: TextFormField(

                          style: TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(

                              contentPadding: EdgeInsets.only(left: 14,right: 14,top: 9,bottom: 9),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color:Color.fromRGBO(0, 209, 135, 1)),
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
                      SizedBox(height: 25,),
                      Container(
                        height: 142,
                        width: 670,
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
                      SizedBox(height: 25,),
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
                            'Send Message',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 100,)
                    ],
                  ),
                  SizedBox(width: 30,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Contact Info',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 36,
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

                    ],
                  ),
                  Spacer()
                ],
              )

            ],
          ),
        ),
      ),

    );
  }
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


