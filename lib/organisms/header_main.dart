import 'package:flutter/material.dart';
import '../molecules/header.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData? icon;
  final VoidCallback? onIconPressed;

  const AppHeader({
    super.key,
    required this.title,
    this.icon,
    this.onIconPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1,
      title: HeaderTitleWithIcon(
        title: title,
        icon: icon,
        onIconPressed: onIconPressed,
      ),
      iconTheme: const IconThemeData(color: Colors.green),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}