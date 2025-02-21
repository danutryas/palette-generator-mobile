import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.10),
                    spreadRadius: 0,
                    blurRadius: 10,
                    offset: const Offset(0, 0),
                  ),
                ],
              ),
              child: ClipRRect(
                clipBehavior: Clip.none,
                child: CurvedNavigationBar(
                  backgroundColor: Colors.transparent,
                  color: const Color(0xFF212121),
                  buttonBackgroundColor: const Color(0xFF212121),
                  height: 54,
                  items: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: FaIcon(
                        FontAwesomeIcons.house,
                        size: 18,
                        color: const Color(0xFFF5F5F5),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: FaIcon(
                        FontAwesomeIcons.fileArrowUp,
                        size: 20,
                        color: const Color(0xFFF5F5F5),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: FaIcon(
                        FontAwesomeIcons.solidUser,
                        size: 18,
                        color: const Color(0xFFF5F5F5),
                      ),
                    ),
                  ],
                  onTap: onTap,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
