import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoBackground extends StatefulWidget {
  final String videoPath;
  final Widget child;

  const VideoBackground({
    super.key,
    required this.videoPath,
    required this.child,
  });

  @override
  State<VideoBackground> createState() => _VideoBackgroundState();
}

class _VideoBackgroundState extends State<VideoBackground> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset(widget.videoPath)
      ..initialize().then((_) {
        if (mounted) {
          setState(() {});
          _controller
            ..setLooping(true)
            ..setVolume(0)
            ..play();
        }
      });
  }

  @override
  void didUpdateWidget(VideoBackground oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.videoPath != widget.videoPath) {
      _changeVideo(widget.videoPath);
    }
  }

  Future<void> _changeVideo(String path) async {
    await _controller.dispose();

    final newController = VideoPlayerController.asset(path);

    await newController.initialize();

    if (!mounted) {
      await newController.dispose();
      return;
    }

    newController
      ..setLooping(true)
      ..setVolume(0)
      ..play();

    setState(() {
      _controller = newController;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        if (_controller.value.isInitialized)
          FittedBox(
            fit: BoxFit.cover,
            child: SizedBox(
              width: _controller.value.size.width,
              height: _controller.value.size.height,
              child: VideoPlayer(_controller),
            ),
          ),

        // Dark overlay so the apps remain readable.
        Container(
          color: Colors.black.withValues(alpha: 0.35),
        ),

        widget.child,
      ],
    );
  }
}
