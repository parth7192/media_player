import 'dart:developer';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class VideoController extends GetxController {
  late VideoPlayerController myController;
  late ChewieController chewieController;

  VideoController() {
    init();
  }

  Future<void> init() async {
    myController = VideoPlayerController.asset("lib/assets/video/nature.mp4");
    await myController.initialize();

    chewieController = ChewieController(
      videoPlayerController: myController,
      autoPlay: false,
      aspectRatio: myController.value.aspectRatio,
      additionalOptions: (context) => [
        OptionItem(
          onTap: () => log("Tapped !!"),
          iconData: Icons.car_crash,
          title: "Car Crash",
        ),
      ],
    );
  }
}
