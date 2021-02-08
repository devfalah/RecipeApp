import 'package:flutter/material.dart';
import 'package:recipes/utilities/tools_utilities.dart';
import 'package:video_player/video_player.dart';

class VideoScreen extends StatefulWidget {
  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      'https://mrbebo.com/wp-content/uploads/2020/08/recipe.mp4',
    )..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: ToolsUtilities.mainColor,
        elevation: 0,
        title: Text("Ricepe name"),
      ),
      backgroundColor: ToolsUtilities.mainColor,
      body: _controller.value.initialized
          ? AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: VideoPlayer(_controller),
                ),
              ),
            )
          : Center(
              child: Container(),
            ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ToolsUtilities.secondColor,
        onPressed: () {
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
