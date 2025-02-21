import 'package:flutter/material.dart';
import 'package:palette_generator/pages/gallery.dart';
import 'package:palette_generator/pages/home.dart';
import 'package:palette_generator/pages/profile.dart';

class AppPage {
  final String title;
  final Widget page;

  const AppPage({required this.title, required this.page});
}

const List<AppPage> appPages = [
  AppPage(title: "Home", page: HomePage()),
  AppPage(title: "Gallery", page: GalleryPage()),
  AppPage(title: "Profile", page: ProfilePage()),
];
