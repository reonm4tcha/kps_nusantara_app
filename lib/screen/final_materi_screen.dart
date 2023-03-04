import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FinalMateriScreen extends StatefulWidget {
  const FinalMateriScreen({
    super.key,
    required this.titleAppBar,
    required this.videoAsset,
    required this.videoTitle,
  });

  final String titleAppBar;
  final String videoTitle;
  final String videoAsset;

  @override
  State<FinalMateriScreen> createState() => _FinalMateriScreenState();
}

class _FinalMateriScreenState extends State<FinalMateriScreen> {
  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;

  @override
  void initState() {
    super.initState();
    _initPlayer();
  }

  void _initPlayer() {
    videoPlayerController = VideoPlayerController.asset(widget.videoAsset);
    videoPlayerController.initialize();

    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      autoPlay: true,
      looping: true,
    );
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.titleAppBar),
      ),
      body: Chewie(controller: chewieController),
      // Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Text(
      //     widget.videoTitle,
      //     // style: bFont20,
      //   ),
      // ),
    );
  }
}
