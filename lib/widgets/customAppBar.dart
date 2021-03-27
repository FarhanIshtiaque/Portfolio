import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';



class CustomAppBar extends StatefulWidget {

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool onIth = false;
  bool onIta =false;
  bool onItr = false;
  bool onItp = false;
  bool onItc = false;

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        padding: EdgeInsets.all(30),
        margin: EdgeInsets.all(20),
        color: Colors.transparent,
        child: Row(
          children: [
            Column(
              children: [
                MouseRegion(
                  onEnter: (value){
                    setState(() {
                      onIth = true;
                    });
                  },
                  onExit: (value){
                    setState(() {
                      onIth = false;
                    });
                  },
                  child: ManuItem(
                    title: 'Home',
                    press: () {},
                    textStyleA: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w200,

                        color: Colors.white
                    ),
                  ),
                ),
                Container(
                  width: 40,
                  height: 2,
                  color: onIth ? Color.fromRGBO(0, 158, 102, 1):Colors.transparent,

                )
              ],
            ),
            Spacer(),
            Column(

              children: [
                MouseRegion(
                  onEnter: (value){
                    setState(() {
                      onIta = true;
                    });
                  },
                  onExit: (value){
                    setState(() {
                      onIta = false;
                    });
                  },
                  child: ManuItem(

                    title: 'About',
                    press: (){Get.toNamed("/about",);},
                    // press: () {
                    //   Navigator.of(context).push(
                    //     PageRouteBuilder(
                    //       pageBuilder: (context, animation, secondaryAnimation) {
                    //         return About(
                    //           // transitionAnimation: animation,
                    //         );
                    //       },
                    //       transitionDuration: Duration(seconds: 2),
                    //     ),
                    //   );
                    // },
                    textStyleA: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w200,

                        color: Colors.white
                    ),
                  ),
                ),
                Container(
                  width: 37,
                  height: 2,
                  color: onIta ? Color.fromRGBO(0, 158, 102, 1):Colors.transparent,

                )
              ],
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              children: [
                MouseRegion(
                  onEnter: (value){
                    setState(() {
                      onItr = true;
                    });
                  },
                  onExit: (value){
                    setState(() {
                      onItr = false;
                    });
                  },
                  child: ManuItem(
                    title: 'Resume',
                    press: () {
                      Get.toNamed("/resume",);
                    },
                    textStyleA: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w200,
                        color: Colors.white
                    ),
                  ),
                ),
                Container(
                  width: 49,
                  height: 2,
                  color: onItr?Color.fromRGBO(0, 158, 102, 1):Colors.transparent,

                )
              ],
            ),
            SizedBox(
              width: 5,

            ),
            Column(
              children: [
                MouseRegion(
                  onEnter: (value){
                    setState(() {
                      onItp = true;
                    });
                  },
                  onExit: (value){
                    setState(() {
                      onItp = false;
                    });
                  },
                  child: ManuItem(
                    title: 'Portfolio',
                    press: () {
                      Get.toNamed("/portfolio",);
                    },
                    textStyleA: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w200,
                        color: Colors.white
                    ),
                  ),
                ),
                Container(
                  width: 49,
                  height: 2,
                  color: onItp ?Color.fromRGBO(0, 158, 102, 1):Colors.transparent,

                )
              ],
            ),
            SizedBox(
              width: 5,

            ),
            Column(
              children: [
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  onEnter: (value){
                    setState(() {
                      onItc = true;
                    });
                  },
                  onExit: (value){
                    setState(() {
                      onItc = false;
                    });
                  },
                  child: ManuItem(

                    title: 'Contact',
                    press: () {
                      Get.toNamed("/contact",);
                    },
                    textStyleA: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w200,
                        color: Colors.white
                    ),
                  ),
                ),
                Container(
                  width: 52,
                  height: 2,
                  color: onItc ?Color.fromRGBO(0, 158, 102, 1):Colors.transparent,

                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ManuItem extends StatefulWidget {
  final String title;
  final TextStyle textStyleA;
  final Function press;

  const ManuItem({
    Key key,
    this.title,
    this.press,
    this.textStyleA,
  }) : super(key: key);

  @override
  _ManuItemState createState() => _ManuItemState();
}

class _ManuItemState extends State<ManuItem> {
  bool inIt = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: MouseRegion(
          onEnter: (value) {
            setState(() {
              inIt = true;
            });
          },
          onExit: (value) {
            setState(() {
              inIt = false;
            });
          },
          child: Text(
            widget.title,
            style: widget.textStyleA,
          ),
        ),
      ),
    );
  }
}
