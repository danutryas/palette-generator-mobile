import 'package:flutter/material.dart';
import 'package:palette_generator/pages/gallery.dart';
import 'package:palette_generator/pages/homepage.dart';
import 'package:palette_generator/pages/profile.dart';

class AppPage {
  final String title;
  final Widget Function(void Function(int) updateIndex)
  pageBuilder; // Accepts a function

  const AppPage({required this.title, required this.pageBuilder});
}

final List<AppPage> appPages = [
  AppPage(
    title: "Home",
    pageBuilder: (updateIndex) => HomePage(updateIndex: updateIndex),
  ),
  AppPage(title: "Gallery", pageBuilder: (updateIndex) => GalleryPage()),
  AppPage(title: "Profile", pageBuilder: (updateIndex) => ProfilePage()),
];
