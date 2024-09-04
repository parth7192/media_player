import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:media_player/Pages/HomePage/home_page.dart';
import 'package:media_player/Pages/MusicPage/music_page.dart';
import 'package:media_player/Pages/Splash_Screen/splash_screen.dart';
import 'package:media_player/Pages/VideoPage/video_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // routes: AppRoutes.instance.allRoutes,
      getPages: [
        GetPage(
          name: '/',
          page: () => const SplashScreen(),
        ),
        GetPage(
          name: '/home_page',
          page: () => const HomePage(),
        ),
        GetPage(
          name: '/music_page',
          page: () => const MusicPage(),
        ),
        GetPage(
          name: '/video_page',
          page: () => const VideoPage(),
        ),
      ],
    );
  }
}
