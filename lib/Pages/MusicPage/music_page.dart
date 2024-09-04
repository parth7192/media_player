import 'dart:developer';
import 'package:flutter/material.dart';
import '../../controller/music_controller.dart';

class MusicPage extends StatelessWidget {
  const MusicPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Music Page",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Image(
              image: NetworkImage(
                "https://assets.timelinedaily.com/2024/07/badnewz-thumbnail-1200x900.jpg",
              ),
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            StreamBuilder(
              stream: MusicController().audioPlayer.currentPosition,
              builder: (context, snapShot) {
                double max = MusicController().duration.inSeconds.toDouble();
                return Row(
                  children: [
                    const Text("00:00"),
                    Expanded(
                      child: Slider(
                        min: 0,
                        max: MusicController().duration.inSeconds.toDouble(),
                        value: snapShot.data?.inSeconds.toDouble() ?? 0,
                        onChanged: (val) {
                          log("$val/$max");
                          MusicController().seek(
                            seconds: val.toInt(),
                          );
                        },
                      ),
                    ),
                    Text("${(max.toInt() / 60).toInt()}:${max.toInt() % 60}"),
                  ],
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    MusicController().play();
                  },
                  icon: const Icon(Icons.play_arrow),
                ),
                IconButton(
                  onPressed: () {
                    MusicController().pause();
                  },
                  icon: const Icon(Icons.pause),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
