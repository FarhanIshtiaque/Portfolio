import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SkillCard extends StatefulWidget {
  final String skillName;

  final String assetName;
  final String description;
  final String shortDes;

  const SkillCard({
    Key key,
    this.skillName,
    this.assetName,
    this.description,
    this.shortDes,
  }) : super(key: key);

  @override
  _SkillCardState createState() => _SkillCardState();
}

class _SkillCardState extends State<SkillCard> {
  bool onContainer = false;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      height: 250,
      width: _size.width/3.7734807  ,
      color: Color.fromRGBO(15, 15, 15, 15),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: MouseRegion(
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
                duration: Duration(milliseconds: 300),
                width: onContainer ? _size.width/3.7734807 : _size.width/4.1393939,
                height: onContainer ? 248 : 220,
                // color: Color.fromRGBO(22, 22, 22, 1),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(22, 22, 22, 1),
                  boxShadow: onContainer?[
                    BoxShadow(
                      blurRadius: 10,
                      color: Color.fromRGBO(0, 158, 102, 1),
                    )
                  ]: [],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      widget.assetName,
                      color: onContainer
                          ? Color.fromRGBO(0, 158, 102, 1)
                          : Colors.white,
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      widget.skillName,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Stack(
                      children: [
                        Center(
                          child: Opacity(
                            opacity: onContainer ? 0 : 1,
                            child: Text(
                              widget.description,
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                color: Color(0xFFD9f9f9f),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Opacity(
                            opacity: onContainer ? 1 : 0,
                            child: Text(
                              widget.shortDes,
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                color: Color(0xFFD9f9f9f),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            curve: Curves.easeOut,
            alignment: Alignment.bottomCenter,
            height: 2,
            width: onContainer ? 362 : 330,
            color: onContainer
                ? Color.fromRGBO(0, 158, 102, 1)
                : Colors.transparent,
          )
        ],
      ),
    );
  }
}