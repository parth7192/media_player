import 'package:flutter/material.dart';
import 'package:media_player/Route/my_route.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 5),
      () {
        Navigator.pushReplacementNamed(context, AppRoutes.instance.home);
      },
    );
    return const Scaffold(
      body: Center(
        child: Image(
          image: AssetImage(
            "lib/assets/gif/DJ.gif",
          ),
        ),
      ),
    );
  }
}
