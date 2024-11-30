import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class PrimaryButtonDs extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color foregroundColor;
  final double height;
  final double width;
  final double? borderRadius;

  const PrimaryButtonDs({
    super.key,
    required this.title,
    required this.onPressed,
    this.backgroundColor = AppColors.primaryColor,
    this.foregroundColor = Colors.white,
    this.height = 48,
    this.width = 220,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10),
        fixedSize: Size(width, height),
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 22),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: theme.textTheme.labelMedium,
      ),
    );
  }
}
