import 'package:flutter/material.dart';
import '../atoms/custom_text.dart';

class HeaderTitleWithIcon extends StatelessWidget {
  final String title;
  final IconData? icon;
  final VoidCallback? onIconPressed;

  const HeaderTitleWithIcon({
    super.key,
    required this.title,
    this.icon,
    this.onIconPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomText(
          text: title,
          size: 22,
          weight: FontWeight.bold,
          color: Colors.green.shade900,
        ),
        const Spacer(),
        if (icon != null)
          IconButton(
            icon: Icon(icon, color: Colors.green.shade900),
            onPressed: onIconPressed,
          ),
      ],
    );
  }
}