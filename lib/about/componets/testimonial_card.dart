import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class TestimonialCard extends StatefulWidget {
  final String avater;
  final String clientName;
  final String designation;
  final String review;
  const TestimonialCard({
    Key key, this.avater, this.clientName, this.designation, this.review,
  }) : super(key: key);


  @override
  _TestimonialCardState createState() => _TestimonialCardState();
}

class _TestimonialCardState extends State<TestimonialCard> {
  bool onCon = false;
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return  MouseRegion(
      onEnter: (value){
        setState(() {
          onCon =true;
        });
      },
      onExit: (value){
        setState(() {
          onCon =false;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        curve: Curves.easeOut,
        height: 242 ,
        width: _size.width/2.577,


        decoration: BoxDecoration(
          color: Color.fromRGBO(22, 22, 22, 1),
          boxShadow: onCon?[
            BoxShadow(
              blurRadius: 10,
              color: Color.fromRGBO(0, 158, 102, 1),
            )
          ]: [],
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Row(
                children: [
                  Image(image: AssetImage(widget.avater),
                    height: 40,
                    width: 40,
                  ),
                  SizedBox(width: 5,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.clientName,
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        widget.designation,
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
                  SvgPicture.asset('quote.svg',

                    width: 35,
                    height: 35,
                     color:onCon?Color.fromRGBO(0, 158, 102, 1):Colors.white,
                  )

                ],
              ),
              SizedBox(height: 15,),
              Text(
                widget.review,
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: _size.width/91.07,
                  fontFamily: 'Poppins',
                  color: Color(0xFFD9f9f9f),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
