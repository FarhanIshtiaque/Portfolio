import 'package:flutter/material.dart';

class HeaderInfo extends StatelessWidget {
  const HeaderInfo({
    Key key, this.smallHeader, this.bigHeader,
  }) : super(key: key);
  final String smallHeader;
  final String bigHeader;

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        SizedBox(
          height: 70,
        ),
        Center(
          child: Text(
            smallHeader,
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 14,
              fontFamily: 'Poppins',
              color: Color(0xFFD9f9f9f),
            ),
          ),
        ),
        SizedBox(
          height: 17,
        ),
        Center(
            child: Text(
          bigHeader,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 36,
            fontFamily: 'Poppins',
            color: Colors.white,
          ),
        )),
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
    );
  }
}
