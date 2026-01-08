import 'package:flutter/material.dart';

import '../widgets/music_player_card.dart';
import '../widgets/pixel_icons.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({super.key});

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Pixel Card
              MusicPlayerCard(),
              const SizedBox(height: 12),

              // progress Bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PixelIconButton(
                    icon: Icons.fast_rewind,
                    onTap: () => print("رجوع"),
                    isSmall: true,
                  ),
                  PixelIconButton(
                    icon: Icons.play_arrow,
                    onTap: () => print("تشغيل"),
                    isPrimary: true,
                  ),
                  PixelIconButton(
                    icon: Icons.fast_forward,
                    onTap: () => print("تخطي"),
                    isSmall: true,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
