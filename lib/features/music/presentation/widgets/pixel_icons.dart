import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class PixelIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final bool isPrimary;
  final bool isSmall;

  const PixelIconButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.isPrimary = false,
    this.isSmall = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // هنا بنربط الوظيفة (الضغط)
      child: Container(
        padding: EdgeInsets.all(isPrimary ? 12 : 8),
        decoration: BoxDecoration(
          color: isPrimary ? AppColors.accent : AppColors.surface,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: isPrimary
                ? Colors.black26
                : AppColors.accent.withValues(alpha: 0.5),
            width: 2,
          ),
          // إضافة ظل بسيط عشان يحسسك إنه زرار حقيقي
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.3),
              offset: const Offset(2, 2),
              blurRadius: 0,
            ),
          ],
        ),
        child: Icon(
          icon,
          color: isPrimary ? Colors.black : Colors.white,
          size: isPrimary ? 32 : 24,
        ),
      ),
    );
  }
}
