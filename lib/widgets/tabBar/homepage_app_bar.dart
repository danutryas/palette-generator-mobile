import 'package:flutter/material.dart';

class HomepageAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(100); // Default AppBar height

  const HomepageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0, // Remove shadow
      centerTitle: false,
      toolbarHeight: 100,
      title: Container(
        padding: EdgeInsets.only(top: 16),
        width:
            MediaQuery.of(context).size.width *
            (3 / 5), // 3/5 of the AppBar width
        child: Text(
          'Discover the Art of\nHarmonious Color Blending.',
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
