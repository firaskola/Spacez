import 'package:flutter/material.dart';

import '../../../../app/theme.dart';

class SpaceZAppBar extends StatelessWidget {
  const SpaceZAppBar({super.key, this.onMenuPressed});

  final VoidCallback? onMenuPressed;

  @override
  Widget build(BuildContext context) {
    const accent = AppColors.primary;
    return Row(
      children: [
        Row(
          children: [
            Image.asset(
              'assets/logo/logo.png',
              height: 40,
              fit: BoxFit.contain,
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: onMenuPressed,
          icon: const Icon(Icons.menu_rounded),
          color: accent,
          style: IconButton.styleFrom(
            padding: const EdgeInsets.all(12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ],
    );
  }
}
