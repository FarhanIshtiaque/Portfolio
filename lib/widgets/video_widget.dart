import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoWidget extends StatefulWidget {
  @override
  _VideoWidgetState createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/untitled.webm')
      ..initialize().then((_) {
        _controller.setVolume(0.0);
        _controller.setLooping(true);
        _controller.play();
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: FittedBox(
            fit: BoxFit.cover,
            child: SizedBox(
              width: _controller.value.size?.width ?? 0,
              height: _controller.value.size?.height ?? 0,
              child: VideoPlayer(_controller),
            ),
          ),
        ),
        //FURTHER IMPLEMENTATION
      ],
    );

    // return Center(
    //   child: _controller.value.isInitialized
    //       ? LayoutBuilder(
    //     builder: (context, constraints) {
    //       return SizedBox.expand(
    //         child: FittedBox(
    //           fit: BoxFit.cover,
    //           child: SizedBox(
    //             width:
    //             constraints.maxWidth * _controller.value.aspectRatio,
    //             height: constraints.maxHeight,
    //             child: VideoPlayer(_controller),
    //           ),
    //         ),
    //       );
    //     },
    //   )
    //       : Container(),
    // );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}