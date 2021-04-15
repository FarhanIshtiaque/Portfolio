import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';


class PortfolioScreenDesktop extends StatefulWidget {
  @override
  _PortfolioScreenDesktopState createState() => _PortfolioScreenDesktopState();
}

class _PortfolioScreenDesktopState extends State<PortfolioScreenDesktop> {
  bool onPort = false;
  bool onGt = false;

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
                      'Some things I’ve built',
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
                            onPort=false;
                          });
                        },
                        onEnter: (value){
                          setState(() {
                            onPort=true;
                          });
                        },
                        child: AnimatedDefaultTextStyle(
                          child: Text(
                            'Portfolio',

                          ),
                          duration: Duration( milliseconds: 50 ),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 47,
                            fontFamily: 'Poppins',
                            color: onPort?Color.fromRGBO(0, 158, 102, 1):Colors.white,
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
              PortfolioCard(),
              SizedBox(height: 80,),
              PortfolioCardReverse(),
              SizedBox(height: 80,),
            ],
          ),

        ),


      ),
    );
  }
}

class PortfolioCard extends StatefulWidget {
  const PortfolioCard({
    Key key,
  }) : super(key: key);

  @override
  _PortfolioCardState createState() => _PortfolioCardState();
}

class _PortfolioCardState extends State<PortfolioCard> {
  bool onContainer = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 360,
          width: 1000,
          color: Colors.transparent,
        ),
        Container(
          height: 360,
          width: 580,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/portfolio.png"), fit: BoxFit.fill),

          ),
        ),
        Positioned(
          left: 510,
          top: 50,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Featured Project',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text('Portfolio',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              MouseRegion(
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
                  duration: Duration(milliseconds: 200),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(22, 22, 22, 1),
                    boxShadow: onContainer?[
                      BoxShadow(
                        blurRadius: 10,
                        color: Color.fromRGBO(0, 158, 102, 1),
                      )
                    ]: [],
                  ),

                  alignment: Alignment.center,
                  padding: EdgeInsets.all(12),
                  height: 120,
                  width: 475,

                  child: Text('This is a Beautiful portfolio website and it is fully responsive with some beautiful Animation on it',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      color: Color(0xFFD9f9f9f),
                    ),

                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text('Flutter  Firebase  Laravel',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),),
              SizedBox(height: 20,),

              MouseRegion(
                cursor: SystemMouseCursors.click,

                child: GestureDetector(
                  onTap: () {
                    launch('https://ishtiaque.me');
                  },
                  child: Icon(
                    Icons.launch,
                    size: 24,
                    color: Colors.white,
                  ),
                ),
              ),


            ],
          ),
        )

      ],
    );
  }
}

class PortfolioCardReverse extends StatefulWidget {
  const PortfolioCardReverse({
    Key key,
  }) : super(key: key);

  @override
  _PortfolioCardReverseState createState() => _PortfolioCardReverseState();
}

class _PortfolioCardReverseState extends State<PortfolioCardReverse> {
  bool onContainer = false;
  @override
  Widget build(BuildContext context) {
    return Stack(

      children: <Widget>[
        Container(
          height: 360,
          width: 1000,
          color: Colors.transparent,
        ),
        Positioned(
          top: 0,
          left: 410,
          child: Container(
            height: 360,
            width: 580,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/portfolio.png"), fit: BoxFit.fill),

            ),
          ),
        ),

        Positioned(
          top: 50,
          left: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Featured Project',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text('Portfolio',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              MouseRegion(
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
                  duration: Duration(milliseconds: 200),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(22, 22, 22, 1),
                    boxShadow: onContainer?[
                      BoxShadow(
                        blurRadius: 10,
                        color: Color.fromRGBO(0, 158, 102, 1),
                      )
                    ]: [],
                  ),

                  alignment: Alignment.center,
                  padding: EdgeInsets.all(12),
                  height: 120,
                  width: 475,

                  child: Text('This is a Beautiful portfolio website and it is fully responsive with some beautiful Animation on it',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      color: Color(0xFFD9f9f9f),
                    ),

                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text('Flutter  Firebase  Laravel',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),),
              SizedBox(height: 20,),

              MouseRegion(
                cursor: SystemMouseCursors.click,

                child: GestureDetector(
                  onTap: () {
                    launch('https://ishtiaque.me');
                  },
                  child: Icon(
                    Icons.launch,
                    size: 24,
                    color: Colors.white,
                  ),
                ),
              ),


            ],
          ),
        ),


      ],
    );
  }
}

