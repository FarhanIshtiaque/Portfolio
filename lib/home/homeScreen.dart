import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/widgets/customAppBar.dart';
import 'package:portfolio/widgets/side_box.dart';
import 'package:portfolio/widgets/video_widget.dart';

import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const _flutterCommands = [
    'I\'m a Flutter Developer',
    'I\'m a UI Designer',
    'I\'m a CS Engineer',
    'I\'m a Freelancer ',
    'And a Beautiful Smiler ',
  ];
  int _currentCommandIndex = 0;
  bool onTt = false;
  bool onFb = false;
  bool onln = false;
  bool onIn = false;
  bool onGt = false;

  void _nextCommand() {
    setState(() {
      _currentCommandIndex = _currentCommandIndex < _flutterCommands.length - 1
          ? _currentCommandIndex + 1
          : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Responsive(
        mobile: SafeArea(
          child: Scaffold(
            drawer: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 250),
              child: SideMenu(),
            ),
            body: Stack(
              children: [
                VideoWidget(),
                Container(
                  height: _size.height,
                  width: double.infinity,
                  color: Color.fromRGBO(0, 0, 0, .7),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Farhan Ishtiaque',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontSize: 35),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: _size.width * .17),
                      child: TypeWriter(
                        prefixText: '>',
                        preFixTextStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                        spacingAfterPrefix: 8,
                        text: _flutterCommands[_currentCommandIndex],
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          color: Colors.white,
                        ),
                        cursorColor: Colors.white,
                        onComplete: _nextCommand,
                      ),
                    ),



                  ],
                ),

                Positioned(
                  top: _size.height*.9,
                  left: _size.width*.3,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          launch('https://twitter.com/rexfarhan');
                        },
                        child: SvgPicture.asset(
                          'assets/Twitter - Negative.svg',
                          color:
                          Color.fromRGBO(26, 145, 218, 1) ,
                          semanticsLabel: 'Twitter',
                          width: 20,
                          height: 20,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(

                        onTap: () {
                          launch('https://www.facebook.com/farhanishtiaque/');
                        },
                        child: SvgPicture.asset(
                          'assets/Facebook - Negative.svg',
                          color:
                          Color.fromRGBO(24, 119, 242, 1) ,
                          semanticsLabel: 'Facebook',
                          width: 20,
                          height: 20,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          launch('https://www.instagram.com/rexfarhan/');
                        },
                        child: SvgPicture.asset(
                          'assets/Instagram - Negative.svg',
                          color:
                          Color.fromRGBO(221, 42, 123, 1) ,
                          semanticsLabel: 'Instagram',
                          width: 20,
                          height: 20,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          launch(
                              'https://www.linkedin.com/in/md-farhan-ishtiaque-43714b176/');
                        },
                        child: SvgPicture.asset(
                          'assets/LinkedIn - Negative.svg',
                          color:
                          Color.fromRGBO(10, 102, 194, 1) ,
                          semanticsLabel: 'LinkedIn',
                          width: 20,
                          height: 20,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          launch('https://github.com/FarhanIshtiaque');
                        },
                        child: SvgPicture.asset(
                          'assets/git.svg',
                          color:
                          Color.fromRGBO(64, 120, 192, 1) ,
                          semanticsLabel: 'git',
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
        tablet: SafeArea(
          child: Scaffold(
            body: Stack(
              children: [
                VideoWidget(),
                Container(
                  height: _size.height,
                  width: double.infinity,
                  color: Color.fromRGBO(0, 0, 0, .7),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Farhan Ishtiaque',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontSize: 60),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: _size.width * .3),
                      child: TypeWriter(
                        prefixText: '>',
                        preFixTextStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                        spacingAfterPrefix: 8,
                        text: _flutterCommands[_currentCommandIndex],
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontFamily: 'Poppins',
                          fontSize: 30,
                          color: Colors.white,
                        ),
                        cursorColor: Colors.white,
                        onComplete: _nextCommand,
                      ),
                    ),



                  ],
                ),
                CustomAppBar(),
                Positioned(
                  top: _size.height*.9,
                  left: _size.width*.45,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          launch('https://twitter.com/rexfarhan');
                        },
                        child: SvgPicture.asset(
                          'assets/Twitter - Negative.svg',
                          color:
                          Color.fromRGBO(26, 145, 218, 1) ,
                          semanticsLabel: 'Twitter',
                          width: 20,
                          height: 20,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(

                        onTap: () {
                          launch('https://www.facebook.com/farhanishtiaque/');
                        },
                        child: SvgPicture.asset(
                          'assets/Facebook - Negative.svg',
                          color:
                          Color.fromRGBO(24, 119, 242, 1) ,
                          semanticsLabel: 'Facebook',
                          width: 20,
                          height: 20,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          launch('https://www.instagram.com/rexfarhan/');
                        },
                        child: SvgPicture.asset(
                          'assets/Instagram - Negative.svg',
                          color:
                          Color.fromRGBO(221, 42, 123, 1) ,
                          semanticsLabel: 'Instagram',
                          width: 20,
                          height: 20,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          launch(
                              'https://www.linkedin.com/in/md-farhan-ishtiaque-43714b176/');
                        },
                        child: SvgPicture.asset(
                          'assets/LinkedIn - Negative.svg',
                          color:
                          Color.fromRGBO(10, 102, 194, 1) ,
                          semanticsLabel: 'LinkedIn',
                          width: 20,
                          height: 20,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          launch('https://github.com/FarhanIshtiaque');
                        },
                        child: SvgPicture.asset(
                          'assets/git.svg',
                          color:
                          Color.fromRGBO(64, 120, 192, 1) ,
                          semanticsLabel: 'git',
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
        desktop: Scaffold(
          body: Stack(
            children: [
              VideoWidget(),
              Container(
                height: _size.height,
                width: double.infinity,
                color: Color.fromRGBO(0, 0, 0, .7),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Farhan Ishtiaque',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        fontSize: 65),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: _size.width * .4),
                    child: TypeWriter(
                      prefixText: '>',
                      preFixTextStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                      spacingAfterPrefix: 8,
                      text: _flutterCommands[_currentCommandIndex],
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontFamily: 'Poppins',
                        fontSize: 30,
                        color: Colors.white,
                      ),
                      cursorColor: Colors.white,
                      onComplete: _nextCommand,
                    ),
                  ),
                  SizedBox(height: 10,),


                ],
              ),
              CustomAppBar(),
              Positioned(
                left: _size.width * .93,
                top: _size.height * .7,
                child: Column(
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
                      child: GestureDetector(
                        onTap: () {
                          launch('https://twitter.com/rexfarhan');
                        },
                        child: SvgPicture.asset(
                          'assets/Twitter - Negative.svg',
                          color:
                          onTt ? Color.fromRGBO(26, 145, 218, 1) : Colors.white,
                          semanticsLabel: 'Twitter',
                          width: 20,
                          height: 20,
                        ),
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
                      child: GestureDetector(

                        onTap: () {
                          launch('https://www.facebook.com/farhanishtiaque/');
                        },
                        child: SvgPicture.asset(
                          'assets/Facebook - Negative.svg',
                          color:
                          onFb ? Color.fromRGBO(24, 119, 242, 1) : Colors.white,
                          semanticsLabel: 'Facebook',
                          width: 20,
                          height: 20,
                        ),
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
                      child: GestureDetector(
                        onTap: () {
                          launch('https://www.instagram.com/rexfarhan/');
                        },
                        child: SvgPicture.asset(
                          'assets/Instagram - Negative.svg',
                          color:
                          onIn ? Color.fromRGBO(221, 42, 123, 1) : Colors.white,
                          semanticsLabel: 'Instagram',
                          width: 20,
                          height: 20,
                        ),
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
                      child: GestureDetector(
                        onTap: () {
                          launch(
                              'https://www.linkedin.com/in/md-farhan-ishtiaque-43714b176/');
                        },
                        child: SvgPicture.asset(
                          'assets/LinkedIn - Negative.svg',
                          color:
                          onln ? Color.fromRGBO(10, 102, 194, 1) : Colors.white,
                          semanticsLabel: 'LinkedIn',
                          width: 20,
                          height: 20,
                        ),
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
                      child: GestureDetector(
                        onTap: () {
                          launch('https://github.com/FarhanIshtiaque');
                        },
                        child: SvgPicture.asset(
                          'assets/git.svg',
                          color:
                          onGt ? Color.fromRGBO(64, 120, 192, 1) : Colors.white,
                          semanticsLabel: 'git',
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
class TypeWriter extends StatefulWidget {
  final String prefixText;
  final TextStyle preFixTextStyle;
  final double spacingAfterPrefix;
  final String text;
  final TextStyle textStyle;
  final Color cursorColor;
  final VoidCallback onComplete;

  const TypeWriter({
    Key key,
    this.prefixText,
    this.preFixTextStyle,
    this.spacingAfterPrefix,
    this.text,
    this.textStyle,
    this.cursorColor,
    this.onComplete,
  }) : super(key: key);

  @override
  _TypeWriterState createState() => _TypeWriterState();
}

class _TypeWriterState extends State<TypeWriter> {
  static const _minTypingPauseDelay = const Duration(milliseconds: 20);
  static const _maxTypingPauseDelay = const Duration(milliseconds: 300);
  String _textToType;
  int _nextToTypeIndex;
  String _typedText;
  BlinkingCursorController _cursorController;

  @override
  void initState() {
    super.initState();
    _textToType = widget.text;
    _nextToTypeIndex = 0;
    _typedText = '';
    _cursorController = BlinkingCursorController();

    _typeNewText();
  }

  @override
  void didUpdateWidget(TypeWriter oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.text != oldWidget.text) {
      _textToType = widget.text;

      _typeNewText();
    }
  }

  @override
  void dispose() {
    _cursorController.dispose();
    super.dispose();
  }

  Future<void> _typeNewText() async {
    await Future.delayed(const Duration(seconds: 1));
    if (!mounted) {
      return;
    }
    final firstDifferentCharacter =
    _firstDifferentCharacter(_textToType, _typedText);
    await _eraseToIndex(firstDifferentCharacter);
    if (!mounted) {
      return;
    }
    await _typeForward();

    await Future.delayed(const Duration(milliseconds: 500));
    if (mounted) {
      widget.onComplete?.call();
    }
  }

  int _firstDifferentCharacter(String lebel1, String lebel2) {
    int index = 0;
    while (index < lebel1.length &&
        index < lebel2.length &&
        lebel1[index] == lebel2[index]) {
      index += 1;
    }
    return index;
  }

  Future<void> _eraseToIndex(index) async {
    for (int i = _typedText.length - 1; i >= index; --i) {
      await Future.delayed(const Duration(milliseconds: 40));
      if (!mounted) {
        return;
      }
      setState(() {
        _typedText = _typedText.substring(0, i);
        _nextToTypeIndex = i;
        _cursorController.reset();
      });
    }
  }

  Future<void> _typeForward() async {
    for (int i = _nextToTypeIndex; i < _textToType.length; ++i) {
      await Future.delayed(_generateTypingPauseDuration());

      if (!mounted) {
        return;
      }
      setState(() {
        _typedText = _textToType.substring(0, i + 1);
        _cursorController.reset();
      });
    }
  }

  Duration _generateTypingPauseDuration() {
    return _lerpDuration(
      _minTypingPauseDelay,
      _maxTypingPauseDelay,
      Random().nextDouble(),
    );
  }

  Duration _lerpDuration(Duration d1, Duration d2, double percent) {
    return Duration(
      milliseconds:
      lerpDouble(d1.inMilliseconds, d2.inMilliseconds, percent).round(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          widget.prefixText,
          style: widget.preFixTextStyle,
        ),
        SizedBox(
          width: widget.spacingAfterPrefix,
        ),
        Text(
          _typedText,
          style: widget.textStyle,
        ),
        BlinkingCursor(
          controller: _cursorController,
          color: widget.cursorColor,
          fontSize: widget.textStyle.fontSize,
        )
      ],
    );
  }
}

class BlinkingCursor extends StatefulWidget {
  const BlinkingCursor({
    Key key,
    this.controller,
    @required this.fontSize,
    @required this.color,
  }) : super(key: key);

  final double fontSize;
  final Color color;
  final BlinkingCursorController controller;

  @override
  _BlinkingCursorState createState() => _BlinkingCursorState();
}

class _BlinkingCursorState extends State<BlinkingCursor>
    with TickerProviderStateMixin {
  static const pulsePeriod = Duration(milliseconds: 200);
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: pulsePeriod,
    )
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _animationController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          _animationController.forward();
        }
      })
      ..forward();

    if (widget.controller != null) {
      widget.controller.addListener((_reset));
    }
  }

  @override
  void didUpdateWidget(BlinkingCursor oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.controller != oldWidget.controller) {
      if (oldWidget.controller != null) {
        widget.controller.addListener(_reset);
      }
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _reset() {
    _animationController.forward(from: 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animationController,
        builder: (context, snapshot) {
          return Text(
            '|',
            style: TextStyle(
              color: widget.color.withOpacity(1.0 - _animationController.value),
              fontSize: widget.fontSize,
            ),
          );
        });
  }
}

class BlinkingCursorController with ChangeNotifier {
  void reset() {
    notifyListeners();
  }
}

