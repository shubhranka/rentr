// lib/shared/widgets/social_auth_button.dart

import 'package:flutter/material.dart';
import 'package:rentr/shared/theme/rentr_theme.dart';

class SocialAuthButton extends StatelessWidget {
  const SocialAuthButton({
    super.key,
    required this.onPressed,
    required this.iconPath,
    required this.text,
  });

  final VoidCallback? onPressed;
  final String iconPath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        icon: Image.asset(iconPath, height: 24, width: 24),
        label: Text(text),
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.cardBackground,
          foregroundColor: AppColors.textPrimary,
          elevation: 1,
          shadowColor: Colors.black12,
          side: const BorderSide(color: AppColors.borderColor),
        ),
      ),
    );
  }
}