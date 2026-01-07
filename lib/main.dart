import 'package:flutter/material.dart';
import 'package:pixel_lofi/core/theme/app_theme.dart';
import 'package:pixel_lofi/features/music/presentation/pages/music_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.pixelCozy(),
      home: MusicPage(),
    );
  }
}
