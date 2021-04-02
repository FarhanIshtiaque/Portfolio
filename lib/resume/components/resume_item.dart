import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';
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
          width:Responsive.isMobile(context)?double.infinity: width/2.48,
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
                    width:Responsive.isMobile(context)?double.infinity: 555,
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
                        fontSize: Responsive.isMobile(context)?18:20,
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