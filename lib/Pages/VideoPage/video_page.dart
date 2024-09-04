import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:media_player/controller/video_controller.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Video Page",
        ),
      ),
      body: Center(
        child: GetBuilder<VideoController>(
          builder: (controller) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  controller.myController.value.isInitialized
                      ? AspectRatio(
                          aspectRatio:
                              controller.myController.value.aspectRatio,
                          child:
                              Chewie(controller: controller.chewieController),
                        )
                      : const CircularProgressIndicator(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          controller.myController.play();
                        },
                        icon: const Icon(
                          Icons.play_arrow,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          controller.myController.pause();
                        },
                        icon: const Icon(
                          Icons.pause,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
