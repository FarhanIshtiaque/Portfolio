import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:portfolio/responsive.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/widgets/customAppBar.dart';
import 'dart:math' as math;
import 'package:portfolio/widgets/social.dart';
import 'package:portfolio/widgets/video_widget.dart';



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
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 40,top: 20),
                  child: PopupMenuButton<String>(
                    color: Color.fromRGBO(16, 16, 16, 1),
                    child: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationY(math.pi),
                      child: SvgPicture.asset(
                        'Menu.svg',
                        color: Colors.white,
                        width: 30,
                        height: 30,
                      ),
                    ),
                    itemBuilder: (context) => <PopupMenuEntry<String>>[
                      PopupMenuItem<String>(
                        value: 'About',
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('About',
                          style: TextStyle(
                            fontWeight: FontWeight.w200,
                            color: Color(0xFFD9f9f9f),
                            fontFamily: 'Poppins',
                            fontSize: 16
                          ),),
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: 'Resume',
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('Resume',
                            style: TextStyle(
                                fontWeight: FontWeight.w200,
                                color: Color(0xFFD9f9f9f),
                                fontFamily: 'Poppins',
                                fontSize: 16
                            ),),
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: 'Portfolio',
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('Portfolio',
                            style: TextStyle(
                                fontWeight: FontWeight.w200,
                                color: Color(0xFFD9f9f9f),
                                fontFamily: 'Poppins',
                                fontSize: 16
                            ),),
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: 'Contact',
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('Contact',
                            style: TextStyle(
                                fontWeight: FontWeight.w200,
                                color: Color(0xFFD9f9f9f),
                                fontFamily: 'Poppins',
                                fontSize: 16
                            ),),
                        ),
                      ),
                    ],
                    onSelected: (value){
                      if(value =='About'){
                        Get.toNamed("/about",);
                      }else if(value =='Resume'){
                        Get.toNamed("/resume",);
                      }else if(value =='Portfolio'){
                        Get.toNamed("/portfolio",);
                      }else if(value =='Contact'){
                        Get.toNamed("/contact",);
                      }


                    },
                  ),
                )
              ],
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
                    top: _size.height * .9,
                    left: _size.width * .3,
                    child: SocialIcon()),
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
                    top: _size.height * .9,
                    left: _size.width * .45,
                    child: SocialIcon()),
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
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              CustomAppBar(),
              Positioned(
                  left: _size.width * .93,
                  top: _size.height * .7,
                  child: SocialIcon()),
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
