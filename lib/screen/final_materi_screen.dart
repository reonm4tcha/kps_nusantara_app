import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FinalMateriScreen extends StatefulWidget {
  const FinalMateriScreen({
    super.key,
    required this.titleAppBar,
    required this.videoAsset,
  });

  final String titleAppBar;

  final String videoAsset;

  @override
  State<FinalMateriScreen> createState() => _FinalMateriScreenState();
}

class _FinalMateriScreenState extends State<FinalMateriScreen> {
  late VideoPlayerController videoPlayerController;

  ChewieController? chewieController;

  @override
  void initState() {
    super.initState();
    _initPlayer();
  }

  List<String> srcs = [
    "https://assets.mixkit.co/videos/preview/mixkit-spinning-around-the-earth-29351-large.mp4",
    "https://assets.mixkit.co/videos/preview/mixkit-daytime-city-traffic-aerial-view-56-large.mp4",
    "https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4"
  ];

  Future<void> _initPlayer() async {
    videoPlayerController = VideoPlayerController.asset(widget.videoAsset);
    // videoPlayerController2 = VideoPlayerController.network(srcs[currPlayIndex]);

    await Future.wait([
      videoPlayerController.initialize(),
      // videoPlayerController2.initialize(),
    ]);

    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      autoPlay: true,
      looping: true,
      autoInitialize: true,
      // additionalOptions: (context) {
      //   return <OptionItem>[
      //     OptionItem(
      //       onTap: toggleVideo,
      //       iconData: Icons.live_tv_sharp,
      //       title: 'Toggle Video Src',
      //     ),
      //   ];
      // },
    );
    setState(() {});
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController?.dispose();
    super.dispose();
  }

  int currPlayIndex = 0;

  // Future<void> toggleVideo() async {
  //   await videoPlayerController.pause();
  //   currPlayIndex += 1;
  //   if (currPlayIndex >= srcs.length) {
  //     currPlayIndex = 0;
  //   }
  //   await _initPlayer();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x00252525),
      appBar: AppBar(
        title: Text(widget.titleAppBar),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: chewieController != null &&
                      chewieController!
                          .videoPlayerController.value.isInitialized
                  ? Chewie(
                      controller: chewieController!,
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircularProgressIndicator(),
                        SizedBox(height: 20),
                        Text('Loading'),
                      ],
                    ),
            ),
          ),
          // TextButton(
          //   onPressed: () {
          //     chewieController?.enterFullScreen();
          //   },
          //   child: const Text('Fullscreen'),
          // ),
        ],
      ),
    );
  }
}
