import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class MusicPlayerCard extends StatelessWidget {
  const MusicPlayerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: AppColors.accent, width: 1.5),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.6),
              offset: const Offset(4, 4),
              blurRadius: 0,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // ٍStars
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '✦',
                    style: TextStyle(color: AppColors.accent, fontSize: 16),
                  ),
                  SizedBox(width: 40),
                  Text(
                    '✦',
                    style: TextStyle(color: Colors.white24, fontSize: 12),
                  ),
                  SizedBox(width: 40),
                  Text(
                    '✦',
                    style: TextStyle(color: AppColors.accent, fontSize: 14),
                  ),
                ],
              ),
              // 🎧 Album cover + Cat
              Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    color: AppColors.accent.withValues(alpha: 0.6),
                    width: 1,
                  ),
                ),
                clipBehavior: Clip.hardEdge,
                child: Stack(
                  children: [
                    // Cover
                    Positioned.fill(
                      child: Image.asset(
                        'assets/images/lana.png',
                        fit: BoxFit.cover,
                      ),
                    ),

                    // 🐱 Cat Sprite
                    Positioned(
                      bottom: 6,
                      right: 6,
                      child: Image.asset(
                        'assets/images/cat.png',
                        width: 56,
                        height: 56,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 12),

              // 🎶 Song title
              Text(
                'Midnight Lofi',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(color: AppColors.textPrimary),
              ),

              const SizedBox(height: 4),

              // 👤 Artist
              Text(
                'Pixel Beats',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
