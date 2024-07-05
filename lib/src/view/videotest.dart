import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

class VideoPlayerTest extends StatelessWidget {
  const VideoPlayerTest({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child:
              Hero(tag: 'video', child: Image.asset('assets/images/ts9.gif'))),
    );
  }
}
