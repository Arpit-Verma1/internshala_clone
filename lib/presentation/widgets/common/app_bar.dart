import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String TitleText;
  const CustomAppBar({super.key, required this.TitleText});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(TitleText),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
