import 'package:flutter/material.dart';

class PageAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(68); // Default AppBar height
  final String title;
  const PageAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0, // Remove shadow
      centerTitle: true,
      toolbarHeight: 100,
      title: Container(
        padding: EdgeInsets.only(top: 16),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            height: 1.5,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
          maxLines: 2, // Allow text to wrap into 2 lines
          overflow: TextOverflow.ellipsis, // Add ellipsis if text overflows
        ),
      ),
      backgroundColor: Colors.grey[900],
    );
  }
}
