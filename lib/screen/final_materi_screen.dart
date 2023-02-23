import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FinalMateriScreen extends StatefulWidget {
  const FinalMateriScreen({super.key, required this.title});

  final String title;

  @override
  State<FinalMateriScreen> createState() => _FinalMateriScreenState();
}

class _FinalMateriScreenState extends State<FinalMateriScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    loadVideoPlayer();
    super.initState();
  }

  loadVideoPlayer() {
    _controller = VideoPlayerController.asset('assets/videos/test.mp4');
    _controller.addListener(() {
      setState(() {});
    });
    _controller.initialize().then((value) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          ),
          Text('Total Duration : ${_controller.value.duration}'),
          VideoProgressIndicator(
            _controller,
            allowScrubbing: true,
            colors: const VideoProgressColors(
              backgroundColor: Colors.redAccent,
              playedColor: Colors.green,
              bufferedColor: Colors.purple,
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  if (_controller.value.isPlaying) {
                    _controller.pause();
                  } else {
                    _controller.play();
                  }
                  setState(() {});
                },
                icon: Icon(_controller.value.isPlaying
                    ? Icons.pause
                    : Icons.play_arrow),
              ),
              IconButton(
                  onPressed: () {
                    _controller.seekTo(const Duration(seconds: 0));

                    setState(() {});
                  },
                  icon: const Icon(Icons.stop))
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
