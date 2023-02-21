import 'package:flutter/material.dart';
import 'package:native_video_view/native_video_view.dart';

class FinalMateriScreen extends StatelessWidget {
  const FinalMateriScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        child: NativeVideoView(
          onCreated: (controller) {
            controller.setVideoSource('assets/video/test.mp4');
          },
          onPrepared: (controller, info) {
            controller.play();
          },
          onCompletion: (controller) {
            print('Video completed');
          },
          onError: (controller, what, extra, message) {
            print('Player error ($what | $extra | $message)');
          },
          onProgress: (progress, duration) {
            print('$progress | $duration');
          },
        ),
      ),
    );
  }
}
