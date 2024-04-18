import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize {
  const CustomAppBar({super.key, required this.title, required this.centreTitle});
  final String title;
  final bool centreTitle;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: centreTitle,
      title:Text(title,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
      ) ,
    );
  }

  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override

  Widget get child => AppBar(
    centerTitle: centreTitle,
    title:Text(title,

      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    ) ,
  );
}
