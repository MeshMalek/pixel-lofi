import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class SlyderPlayer extends StatelessWidget {
  const SlyderPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            trackHeight: 4,
            thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6),
            overlayShape: SliderComponentShape.noOverlay,
          ),
          child: Slider(
            value: 0.3,
            onChanged: (v) {},
            activeColor: AppColors.accent,
            inactiveColor: Colors.white12,
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "01:20",
                style: TextStyle(
                  fontFamily: 'PixelFont',
                  fontSize: 12,
                  color: Colors.white38,
                ),
              ),
              Text(
                "03:45",
                style: TextStyle(
                  fontFamily: 'PixelFont',
                  fontSize: 12,
                  color: Colors.white38,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
