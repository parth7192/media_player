import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:get/get.dart';

class MusicController {
  AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();
  Duration duration = Duration.zero;

  MusicController() {
    init();
  }

  Future<void> init() async {
    await audioPlayer
        .open(
      Audio(
        "lib/assets/audio/toba.mp3",
        metas: Metas(
          image: const MetasImage.network(
            "https://assets.timelinedaily.com/2024/07/badnewz-thumbnail-1200x900.jpg",
          ),
          title: "Toba",
        ),
      ),
      autoStart: false,
      showNotification: true,
    )
        .then(
      (value) {
        duration = audioPlayer.current.value!.audio.duration;
      },
    );
  }

  Future<void> play() async {
    await audioPlayer.play();
  }

  Future<void> pause() async {
    await audioPlayer.pause();
  }

  Future<void> seek({required int seconds}) async {
    await audioPlayer.seek(
      Duration(seconds: seconds),
    );
  }

  getCurrentDuration() {}

  bool get isPlaying => audioPlayer.isPlaying.value;
}
