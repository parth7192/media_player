import 'package:flutter/material.dart';
import 'package:media_player/Route/my_route.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: AppRoutes.instance.,
    );
  }
}
