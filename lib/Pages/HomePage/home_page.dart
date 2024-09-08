import 'package:flutter/material.dart';
import 'package:media_player/Pages/MusicPage/music_page.dart';
import 'package:media_player/Pages/VideoPage/video_page.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentPage = 0;

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          centerTitle: true,
          title: const Text(
            "Home Page",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: PageView(
        controller: _pageController,
        children: [
          const MusicPage(),
          VideoPage(),
        ],
        onPageChanged: (index) {
          setState(() => _currentPage = index);
        },
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentPage,
        onTap: (int index) {
          _pageController.jumpToPage(index);
          setState(() => _currentPage = index);
        },
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        items: [
          SalomonBottomBarItem(
            icon: const Icon(Icons.music_note, color: Colors.blue),
            selectedColor: Colors.blue,
            title: const Text('Music'),
          ),
          SalomonBottomBarItem(
            title: const Text('Video'),
            icon: const Icon(Icons.videocam_outlined, color: Colors.pink),
            selectedColor: Colors.pink,
          ),
        ],
      ),
    );
  }
}
