
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TestimonialCardMobile extends StatelessWidget {
  final String avater;
  final String designation;
  final String review;
  final String clientName;

  const TestimonialCardMobile({Key key, this.avater, this.designation, this.review, this.clientName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Container(

      height: _size.width>330 ? 270 : 300 ,
      width: double.infinity,


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
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Row(
              children: [
                Image(image: AssetImage(avater),
                  height:_size.width>330? 40:30,
                  width: _size.width>330? 40:30,
                ),
                SizedBox(width: 5,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      clientName,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize:_size.width>330? 15:13,
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      designation,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize:_size.width>330? 15:13,
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
                  color:Color.fromRGBO(0, 158, 102, 1),
                )

              ],
            ),
            SizedBox(height: 15,),
            Text(
              review,
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 14,
                fontFamily: 'Poppins',
                color: Color(0xFFD9f9f9f),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
