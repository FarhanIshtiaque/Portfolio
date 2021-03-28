import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialIcon extends StatefulWidget {
  @override
  _SocialIconState createState() => _SocialIconState();
}

class _SocialIconState extends State<SocialIcon> {
  bool onTt = false;
  bool onFb = false;
  bool onln = false;
  bool onIn = false;
  bool onGt = false;

  @override
  Widget build(BuildContext context) {
    return Responsive.isDesktop(context)?Column(
      children: [


        MouseRegion(
          cursor: SystemMouseCursors.click,
          onEnter: (value) {
            setState(() {
              onTt = true;
            });
          },
          onExit: (value) {
            setState(() {
              onTt = false;
            });
          },
          child: IconSocial(
            iconName: 'assets/Twitter - Negative.svg',
            color:onTt ? Color.fromRGBO(26, 145, 218, 1) : Colors.white,

            link: 'https://twitter.com/rexfarhan',
          ),
        ),
        SizedBox(
          height: 15,
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          onEnter: (value) {
            setState(() {
              onFb = true;
            });
          },
          onExit: (value) {
            setState(() {
              onFb = false;
            });
          },
          child: IconSocial(
            link: 'https://www.facebook.com/farhanishtiaque/',
            iconName: 'assets/Facebook - Negative.svg',
            color: onFb ? Color.fromRGBO(24, 119, 242, 1) : Colors.white,

          ),

        ),
        SizedBox(
          height: 15,
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          onEnter: (value) {
            setState(() {
              onIn = true;
            });
          },
          onExit: (value) {
            setState(() {
              onIn = false;
            });
          },
          child: IconSocial(
            link: 'https://www.instagram.com/rexfarhan/',
            iconName: 'assets/Instagram - Negative.svg',
            color: onIn ? Color.fromRGBO(221, 42, 123, 1) : Colors.white,

          ),
        ),
        SizedBox(
          height: 15,
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          onEnter: (value) {
            setState(() {
              onln = true;
            });
          },
          onExit: (value) {
            setState(() {
              onln = false;
            });
          },
          child: IconSocial(
            link: 'https://www.linkedin.com/in/md-farhan-ishtiaque-43714b176/',
            iconName: 'assets/LinkedIn - Negative.svg',
            color: onln ? Color.fromRGBO(10, 102, 194, 1) : Colors.white,

          ),
        ),
        SizedBox(
          height: 15,
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          onEnter: (value) {
            setState(() {
              onGt = true;
            });
          },
          onExit: (value) {
            setState(() {
              onGt = false;
            });
          },
          child: IconSocial(
            link: 'https://github.com/FarhanIshtiaque',
            iconName: 'assets/git.svg',
            color: onGt ? Color.fromRGBO(64, 120, 192, 1) : Colors.white,

          ),
        ),
      ],
    ):
    Row(
      children: [


        IconSocial(
          iconName: 'assets/Twitter - Negative.svg',
          color: Color.fromRGBO(26, 145, 218, 1) ,

          link: 'https://twitter.com/rexfarhan',
        ),
        SizedBox(
          width: 15,
        ),
        IconSocial(
          link: 'https://www.facebook.com/farhanishtiaque/',
          iconName: 'assets/Facebook - Negative.svg',
          color: Color.fromRGBO(24, 119, 242, 1) ,

        ),
        SizedBox(
          width: 15,
        ),
        IconSocial(
          link: 'https://www.instagram.com/rexfarhan/',
          iconName: 'assets/Instagram - Negative.svg',
          color:  Color.fromRGBO(221, 42, 123, 1) ,

        ),
        SizedBox(
          width: 15,
        ),
        IconSocial(
          link: 'https://www.linkedin.com/in/md-farhan-ishtiaque-43714b176/',
          iconName: 'assets/LinkedIn - Negative.svg',
          color: Color.fromRGBO(10, 102, 194, 1) ,

        ),
        SizedBox(
          width: 15,
        ),
        IconSocial(
          link: 'https://github.com/FarhanIshtiaque',
          iconName: 'assets/git.svg',
          color: Color.fromRGBO(64, 120, 192, 1),

        ),
      ],
    )
    ;
  }
}

class IconSocial extends StatefulWidget {
  final String iconName;
  final Color color;
  final String link;

  const IconSocial({Key key, this.iconName, this.color, this.link}) : super(key: key);

  @override
  _IconSocialState createState() => _IconSocialState();
}

class _IconSocialState extends State<IconSocial> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        launch(widget.link);
      },
      child: SvgPicture.asset(widget.iconName,
        width: 20,
        height: 20,
        color: widget.color,
      ),
    );
  }
}
